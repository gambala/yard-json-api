def init
  tags = Tags::Library.visible_tags - [:abstract, :deprecated, :note, :todo]
  create_tag_methods(tags - [:example, :option, :overload, :see, :response])
  sections :index, tags.map { |t| t.to_s.tr('.', '_').to_sym }
  sections.any(:overload).push(T('docstring'))
end
