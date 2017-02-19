module YardJsonApi
  module Tags
    TAGS = [
      ['Endpoint', :endpoint],
      ['Errors',   :error, :with_types_and_title]
    ].freeze

    def self.define_tags
      TAGS.each { |tag| YARD::Tags::Library.define_tag(*tag) }
      YARD::Tags::Library.visible_tags.delete(:param)
      YARD::Tags::Library.visible_tags.place(:param).before(:example)
      YARD::Tags::Library.visible_tags.place(:error).after(:param)
    end
  end
end
