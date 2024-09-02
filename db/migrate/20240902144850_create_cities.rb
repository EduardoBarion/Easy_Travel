class CreateCities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.text :description
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
