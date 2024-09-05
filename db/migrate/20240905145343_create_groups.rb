class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
