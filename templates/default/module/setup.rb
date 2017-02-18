def init
  sections :header, T('docstring'), :method_details_list, [T('method_details')]
end

def resource_name(resource)
  resource.name(true).gsub(/Controller$/, '')
end
