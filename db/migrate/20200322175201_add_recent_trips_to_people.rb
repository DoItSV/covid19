class AddRecentTripsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :recent_trip, :boolean, default: false
    add_column :people, :contact_with_recent_trip, :boolean, default: false
  end
end
