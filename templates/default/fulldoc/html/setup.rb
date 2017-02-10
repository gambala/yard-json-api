def generate_resource_list
  @items = Registry.all(:class).select { |obj| obj.has_tag?(:resource) }
  @list_title = 'Resource List'
  @list_type = 'resource'
  generate_list_contents
end
