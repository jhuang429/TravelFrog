class ChangeCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :airport_code, :string
    add_column :cities, :currency, :string
    change_column_default(:users, :photo, "/assets/frog-174cec3496eb3a3407c0339c3d921efd145a5babf01e4ad307718ffda042ffef.png")
  end
end
