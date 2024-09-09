class AddNameToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :name, :text
  end
end
