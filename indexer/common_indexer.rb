class IndexerCommon

  self.add_indexer_initialize_hook do |indexer|
    indexer.add_document_prepare_hook {|doc, record|
      if doc['primary_type'] == 'accession'
        if record['record']['material_types']
          doc['material_type_works_of_art_u_ubool'] = record['record']['material_types']['works_of_art']
          doc['material_type_audiovisual_materials_u_ubool'] = record['record']['material_types']['audiovisual_materials']
          doc['material_type_books_u_ubool'] = record['record']['material_types']['books']
          doc['material_type_electronic_documents_u_ubool'] = record['record']['material_types']['electronic_documents']
          doc['material_type_games_u_ubool'] = record['record']['material_types']['games']
          doc['material_type_microforms_u_ubool'] = record['record']['material_types']['microforms']
          doc['material_type_maps_u_ubool'] = record['record']['material_types']['maps']
          doc['material_type_manuscripts_u_ubool'] = record['record']['material_types']['manuscripts']
          doc['material_type_photographs_u_ubool'] = record['record']['material_types']['photographs']
          doc['material_type_realia_u_ubool'] = record['record']['material_types']['realia']
          doc['material_type_serials_u_ubool'] = record['record']['material_types']['serials']
        end
      end
    }

  end

end
