class AddLatitudeLongitudeToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :latitude, :string
    add_column :people, :longitude, :string
  end
end
