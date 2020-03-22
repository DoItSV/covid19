class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.references :department, null: false, foreign_key: true, type: :uuid
      t.string :name

      t.timestamps
    end
  end
end
