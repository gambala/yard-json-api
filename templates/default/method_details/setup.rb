def init
  sections :header, [:endpoint, T('docstring')]
end

def endpoint_name(object)
  endpoint = object.tag(:endpoint)
  return nil unless endpoint
  return endpoint.text unless endpoint.text.empty?
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
        .gsub(/::/, '/')
        .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
        .gsub(/([a-z\d])([A-Z])/, '\1_\2')
        .tr('-', '_')
        .downcase
        .gsub('_controller', '')
        .gsub('#index', '')
        .gsub('#new', '/new')
        .gsub('#create', '')
        .gsub('#show', '/:id')
        .gsub('#edit', '/:id/edit')
        .gsub('#update', '/:id')
        .gsub('#destroy', '/:id')
        .tr('#', '/')
end
