def menu_lists
  super + [ { type: 'resource', title: 'Resources', search_title: 'Resource List' } ]
end

def resource_name(resource)
  resource.name(true).gsub(/Controller$/, '')
end
