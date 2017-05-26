module Steven
  class Migration
    def change
      create_table "", {
        name:   :string,
        number: :integer,
        phone:  :number
      }
    end

    protected def create_table table_name, params
      sql = "CREATE TABLE #{table_name}" +
            "(id int primary key,"

      #
    end
  end
end
