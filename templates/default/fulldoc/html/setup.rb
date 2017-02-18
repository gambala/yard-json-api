def generate_class_list
  @items = Registry.all(:class).select { |obj| obj.has_tag?(:resource) }
  @list_title = 'Resource List'
  @list_type = 'class'
  generate_list_contents
end

def resource_name(resource)
  resource.name(true).gsub(/Controller$/, '')
end
