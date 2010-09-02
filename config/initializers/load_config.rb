require 'yaml'
AppConfig = YAML.load_file("#{RAILS_ROOT}/config/application.yml").nested_symbolize_keys! || {}
