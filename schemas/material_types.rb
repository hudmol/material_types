{
  :schema => {
    "$schema" => "http://www.archivesspace.org/archivesspace.json",
    "version" => 1,
    "type" => "object",

    "properties" => {

      "works_of_art" => {"type" => "boolean", "default" => false},
      "audiovisual_materials" => {"type" => "boolean", "default" => false},
      "books" => {"type" => "boolean", "default" => false},
      "electronic_documents" => {"type" => "boolean", "default" => false},
      "games" => {"type" => "boolean", "default" => false},
      "microforms" => {"type" => "boolean", "default" => false},
      "maps" => {"type" => "boolean", "default" => false},
      "manuscripts" => {"type" => "boolean", "default" => false},
      "photographs" => {"type" => "boolean", "default" => false},
      "realia" => {"type" => "boolean", "default" => false},
      "serials" => {"type" => "boolean", "default" => false},

    },
  },
}
