class AddDatesToTrips < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :date_start, :date
    add_column :trips, :date_end, :date
  end
end
