class DropAttendeeTables < ActiveRecord::Migration[7.1]
  def change
    drop_table :attendee_tables
  end
end
