describe Steven::Migrations::CreateTable do
  subject do
    Steven::Migrations::CreateTable.new(:my_table_name, {
      "name"         => "string",
      "my_int_field" => "integer"
    })
  end

  describe "#to_sql" do
    let(:sql) do
      "CREATE TABLE my_table_name (id int primary key, name varchar(255),"+
      " my_int_field int, updated_at datetime, created_at datetime);"
    end

    it "return the correct sql" do
      expect(subject.to_sql).to eq(sql)
    end
  end
end
