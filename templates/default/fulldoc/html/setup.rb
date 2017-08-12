def generate_class_list
  @items = Registry.all(:class)
                   .select { |obj| !obj.meths.select { |meth| meth.has_tag?(:endpoint) }.empty? }
                   .sort_by { |resource| resource_name(resource) }
  @list_title = 'Resource List'
  @list_type = 'class'
  generate_list_contents
end

def resource_name(resource)
  resource.title
          .gsub(/Controller$/, '')
          .gsub(/^Api::V\d+::/, '')
end
