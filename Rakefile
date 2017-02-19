require 'http'
require 'yaml'

task :generate_config do
  config_template = YAML.load_file("config/wraith_template.yml")

  results = JSON.parse(HTTP.get('https://www.gov.uk/api/search.json?count=5'))["results"]

  config_template["paths"] = results.each_with_object({}) do |result, hash|
    hash[result['title']] = result['link']
  end

  File.write("generated-wraith-config.yml", YAML.dump(config_template))
end
