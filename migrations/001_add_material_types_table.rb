Sequel.migration do

  up do

    create_table(:material_types) do
      primary_key :id

      Integer :lock_version, :default => 0, :null => false
      Integer :json_schema_version, :null => false

      Integer :accession_id, :null => true

      Integer :works_of_art
      Integer :audiovisual_materials
      Integer :books
      Integer :electronic_documents
      Integer :games
      Integer :microforms
      Integer :maps
      Integer :manuscripts
      Integer :photographs
      Integer :realia
      Integer :serials

      apply_mtime_columns
    end


    alter_table(:material_types) do
      add_foreign_key([:accession_id], :accession, :key => :id)
    end

  end


  down do

    drop_table(:material_types)

  end

end
