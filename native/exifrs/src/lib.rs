use exif;

use rustler::NifStruct;

#[derive(NifStruct)]
#[module = "FieldInfo"]
pub struct FieldInfo {
    name: String,
    value: String,
}

#[rustler::nif]
fn parse(path: &str) -> Result<Vec<FieldInfo>, &str> {
    match std::fs::File::open(path) {
        Ok(file) => {
            let mut bufreader = std::io::BufReader::new(&file);
            match exif::get_exif_attr_from_jpeg(&mut bufreader) {
                Ok(exif_info) => match exif::parse_exif(&exif_info) {
                    Ok((parsed_exif, _)) => {
                        let nice: Vec<FieldInfo> = parsed_exif
                            .iter()
                            .map(|f| FieldInfo {
                                name: f.tag.to_string(),
                                value: f.display_value().to_string(),
                            })
                            .collect();
                        Ok(nice)
                    }
                    Err(_) => Err("Can not parse exif data"),
                },
                Err(_) => Err("No exif data found"),
            }
        }
        Err(_) => Err("Can not open file"),
    }
}

rustler::init!("Elixir.EsExif.Native", [parse]);
