class Example < ActiveRecord::Model
  adapter postgres

  primary id                 : Int
  field last_name            : String
  field first_name           : String
end
