module YardRest
  module Templates
    def self.register_template_path
      path = File.dirname(__FILE__) + '/../../templates'
      YARD::Templates::Engine.register_template_path path
    end
  end
end
