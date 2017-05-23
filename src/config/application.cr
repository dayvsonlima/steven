require "kemal"
require "jennifer/adapter/postgres"
require "jennifer"

require "../steven/**"
require "../app/**"

ENV["PG_USER"] = "my_user"
ENV["PG_PASS"] = ""
ENV["PG_HOST"] = "localhost"
ENV["PG_DATABASE"] = "my_db"

module App
  Kemal.run
end
