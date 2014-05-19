material_types
==============

ArchivesSpace plugin to add a material types subrecord to Accession records

To install, unpack in the archivesspace/plugins directory, then edit config.rb
to include this plugin:

    AppConfig[:plugins] = ["local", "material_types"]

Then run the database migration to create the material types table:

    build/run db:migrate

You should now be able to add a Material Types subrecord to Accession records.
