require 'spec_helper'

describe 'Accession with Material Types model' do

  it "allows accessions to be created with material types" do
    accession = Accession.create_from_json(build(:json_accession,
                                                 :material_types =>
                                                    {
                                                      "books" => true,
                                                      "realia" => true,
                                                    }
                                                 ),
                                          :repo_id => $repo_id)

    Accession[accession[:id]].material_type.books.should eq(1)
    Accession[accession[:id]].material_type.realia.should eq(1)
    Accession[accession[:id]].material_type.maps.should eq(0)
  end

end
