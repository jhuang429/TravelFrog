class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :photo
      t.string :weather_url

      t.timestamps
    end
  end
end
