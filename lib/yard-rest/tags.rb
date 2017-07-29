module YardRest
  module Tags
    TAGS = [
      ['Endpoint',  :endpoint],
      ['Params',    :field, :with_types_and_name],
      ['Responses', :response, :with_types_and_title]
    ].freeze

    def self.define_tags
      TAGS.each { |tag| YARD::Tags::Library.define_tag(*tag) }
      YARD::Tags::Library.visible_tags.place(:field).before(:example)
      YARD::Tags::Library.visible_tags.place(:response).after(:field)
    end
  end
end
