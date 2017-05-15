require "kemal"
require "active_record"
require "postgres_adapter"

require "../core/**"
require "../app/**"

ENV["PG_USER"] = "dayvson"
ENV["PG_PASS"] = ""
ENV["PG_HOST"] = "localhost"
ENV["PG_DATABASE"] = "kemal_db"

module App
  ActiveRecord::Registry.register_adapter(
    "postgres",
    PostgresAdapter::Adapter
  )

  Kemal.run
end
