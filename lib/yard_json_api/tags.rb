module YardJsonApi
  module Tags
    TAGS = [
      ['Declaration of RESTful API type', :resource],
      ['HTTP-Error with description',     :error, :with_title_and_text],

      ['URL',                             :url],
      ['HTTP-Action for the Resource',    :action],

      ['Resource Object Property',        :property, :with_types_and_name],

      ['Required Arguments',              :required, :with_types_and_name],
      ['Optional Arguments',              :optional, :with_types_and_name],

      ['Example Request',                 :example_request],
      ['Example Request Description',     :example_request_description],
      ['Request Fields',                  :request_field, :with_types_and_name],

      ['Example Response',                :example_response],
      ['Example Response Description',    :example_response_description],
      ['Response Fields',                 :response_field, :with_types_and_name],
      ['Response Type',                   :response, :with_types]
    ]

    def self.define_tags
      TAGS.each do |tag|
        YARD::Tags::Library.define_tag(*tag)
      end
    end
  end
end
