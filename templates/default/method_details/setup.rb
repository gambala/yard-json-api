def init
  sections :header, [:request, T('docstring')]
end

def request_data(object)
  if object.tag(:request)
    "#{object.tag(:request).name} #{object.tag(:request).text}"
  else
    object.name
  end
end
