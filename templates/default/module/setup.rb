def init
  sections :header, T('docstring'), :method_details_list, [T('method_details')]
end

def resource_name(resource)
  resource.name(true).gsub(/Controller$/, '')
end

def object_type(object)
  case object
  when YARD::CodeObjects::ClassObject
    nil
  else
    object.type.to_s.capitalize
  end
end
