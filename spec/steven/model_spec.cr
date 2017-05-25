require "../spec_helper"

describe Steven::Model do
  describe "table_name=" do
    before do
      Steven::Model.table_name = "my_table"
    end

    subject { Steven::Model.table_name }

    it "should eq table_name" do
      is_expected.to eq("my_table")
    end
  end
end
