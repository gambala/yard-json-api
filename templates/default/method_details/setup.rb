def init
  sections :header, [:request, T('docstring')]
end

def request_name(object)
  request = object.tag(:request)
  return nil unless request
  return request.text unless request.text.empty?
  "#{http_method(object)} #{uri(object)}"
end

def http_method(object)
  case object.name
  when :index, :new, :show, :edit
    'GET'
  when :create
    'POST'
  when :update
    'PUT/PATCH'
  when :destroy
    'DELETE'
  else
    'unknown'
  end
end

def uri(object)
  object.path
        .gsub('Controller', '')
        .gsub('::', '/')
        .gsub('#index', '')
        .gsub('#new', '/new')
        .gsub('#create', '')
        .gsub('#show', '/:id')
        .gsub('#edit', '/:id/edit')
        .gsub('#update', '/:id')
        .gsub('#destroy', '/:id')
        .downcase
end
