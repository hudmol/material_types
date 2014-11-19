Yale Material Types README
--------------------------

# Getting Started

Download the latest release from the Releases tab in Github:

  https://github.com/hudmol/material_types/releases

Unzip the release and move it to:

    /path/to/archivesspace/plugins

Unzip it:

    $ cd /path/to/archivesspace/plugins
    $ unzip material_types-vX.X.zip

Enable the plugin by editing the file in `config/config.rb`:

    AppConfig[:plugins] = ['some_plugin', 'material_types']

(Make sure you uncomment this line (i.e., remove the leading '#' if present))

See also:

  https://github.com/archivesspace/archivesspace/blob/master/plugins/README.md

You will need to shutdown archivesspace and migrate the database:

     $ cd /path/to/archivesspace
     $ scripts/setup-database.sh

See also:

  https://github.com/archivesspace/archivesspace/blob/master/UPGRADING.md

# How it works

When this plugin is installed, you will see a new Material Types subrecord
form in the Accessions form. After adding a Material Types subrecord to an
Accession you can check the material types that apply to the Accession.

You can set default Material Types by clicking 'My Repository Preferences'
in the user dropdown menu. Checked Material Type preferences will be
checked by default when a new Material Types record is created.
 

The Material Types are based on http://vocab.getty.edu/aat
