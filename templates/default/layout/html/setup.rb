def menu_lists
  [{ type: 'class', title: 'Resources', search_title: 'Resource List' },
   { type: 'file',  title: 'Files',  search_title: 'File List' }]
end

def resource_name(resource)
  resource.name(true).gsub(/Controller$/, '')
end
