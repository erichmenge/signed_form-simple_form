source 'https://rubygems.org'

# Specify your gem's dependencies in signed_form-simple_form.gemspec
gemspec

simple_form_version = ENV['SIMPLE_FORM_VERSION'] || 'v2.1'

case simple_form_version
when 'v2.0' then
  gem 'simple_form', github: 'plataformatec/simple_form', branch: 'v2.0'
when 'v2.1' then
  gem 'simple_form', github: 'plataformatec/simple_form', branch: 'v2.1'
end

