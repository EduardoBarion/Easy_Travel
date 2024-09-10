class AddInviteTokenToTrips < ActiveRecord::Migration[7.1]
  def change
    add_column :trips, :invite_token, :string
  end
end
