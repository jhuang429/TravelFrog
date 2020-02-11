class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :city, null: false, foreign_key: true
      t.string :review
      t.boolean :travelled
      t.integer :rating

      t.timestamps
    end
  end
end
