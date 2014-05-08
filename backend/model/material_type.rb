class MaterialType < Sequel::Model(:material_types)
  include ASModel
  corresponds_to JSONModel(:material_types)

  set_model_scope :global

end
