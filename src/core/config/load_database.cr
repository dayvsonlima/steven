require "yaml"
require "kilt"

class DbFile
  Kilt.file("src/config/database.yml")
end

puts DbFile.new.to_s

# database_configuration = YAML.parse_all(File.read("src/config/database.yml"))
# pp database_configuration
