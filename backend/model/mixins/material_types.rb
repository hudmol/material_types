module MaterialTypes

  def self.included(base)
    base.one_to_one :material_type

    base.def_nested_record(:the_property => :material_types,
                           :contains_records_of_type => :material_types,
                           :corresponding_to_association  => :material_type,
                           :is_array => false)
  end

end
