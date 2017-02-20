def init
  sections :header, T('docstring'), :children, :method_details_list, [T('method_details')]
end

def resource_name(resource)
  resource.name(true).gsub(/Controller$/, '')
end

def meth_list
  object.meths.select { |meth| meth.has_tag?(:endpoint) }
end

def object_type(object)
  case object
  when YARD::CodeObjects::ClassObject
    nil
  else
    object.type.to_s.capitalize
  end
end
