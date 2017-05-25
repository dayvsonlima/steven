module Steven
  class Model
    @@table_name = ""

    def self.table_name=(table_name)
      @@table_name = table_name
    end

    def self.table_name
      @@table_name
    end
  end
end
