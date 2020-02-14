class AddAirportToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :airport, :string
  end
end
