Gem::Specification.new do |s|
  s.name = 'real_email'
  s.version = '1.0'
  s.summary = 'real_email'
  s.description = 'Reduce bounced emails and errors by validating emails against MX records.'
  s.authors = ['APIMATIC', 'Zeeshan Ejaz Bhatti']
  s.email = 'zeeshan@apimatic.io'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('unirest', '~> 1.1.2')
  s.add_dependency('json_mapper', '~> 0.2.1')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
