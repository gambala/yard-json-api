module YardJsonApi
  module Tags
    TAGS = [
      ['Endpoint', :endpoint],
      ['Errors',   :error, :with_types_and_title]
    ].freeze

    def self.define_tags
      TAGS.each do |tag|
        YARD::Tags::Library.define_tag(*tag)
      end
      YARD::Tags::Library.visible_tags.place(:error).after(:example)
    end
  end
end
