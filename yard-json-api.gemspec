lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yard_json_api/version'

Gem::Specification.new do |s|
  s.name = 'yard-json-api'
  s.version = YardJsonApi::VERSION
  s.authors = ['Vitaliy Emeliyantsev']
  s.email = 'gambala.rus@gmail.com'
  s.summary = 'YARD JSON API plugin'
  s.description = <<-EOF
    A customized plugin for Yardoc that produces JSON API documentation for Restful web services.
  EOF
  s.homepage = 'https://github.com/gambala/yard-json-api'
  s.date = Time.now.strftime('%Y-%m-%d')
  s.require_paths = ['lib']
  s.files = Dir.glob('lib/**/*')
  s.add_runtime_dependency 'yard', '~> 0.8'
end
