module Steven
  module Migrations
    class CreateTable
      @params : Array(Hash(String, String))
      @table_name : String | Symbol

      def initialize(
        table_name : Symbol | String,
        params : Hash(String, String)
       )

        @table_name = table_name

        @params = params.map do |par, val|
          {
            "name" => par,
            "value" =>  val
          }
        end
      end

      def to_sql
        sql = "CREATE TABLE #{@table_name} " +
              "(" +
              "id int primary key, "

        is_first = 1

        @params.each do |field|
          sql += "#{field["name"]} #{get_type_sql(field["value"])}"
          sql += ", "
        end

        sql += timestamps_sql

        sql += ");"
        sql
      end

      def get_type_sql(data_type)
        data_types = {
          "string"  => "varchar(255)",
          "integer" => "int"
        }

        data_types[data_type]
      end

      def timestamps_sql
        "updated_at datetime, created_at datetime"
      end
    end
  end
end
