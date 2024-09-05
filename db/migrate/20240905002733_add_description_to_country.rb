class AddDescriptionToCountry < ActiveRecord::Migration[7.1]
  def change
    add_column :countries, :description, :text
  end
end
