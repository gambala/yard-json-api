module YardJsonApi
  module Tags
    TAGS = [
      ['Endpoint', :endpoint],
      ['Params',   :field, :with_types_and_name],
      ['Errors',   :error, :with_types_and_title]
    ].freeze

    def self.define_tags
      TAGS.each { |tag| YARD::Tags::Library.define_tag(*tag) }
      YARD::Tags::Library.visible_tags.place(:field).before(:example)
      YARD::Tags::Library.visible_tags.place(:error).after(:field)
    end
  end
end
