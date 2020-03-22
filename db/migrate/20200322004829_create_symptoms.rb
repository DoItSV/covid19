class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :name
      t.integer :weight

      t.timestamps
    end
  end
end
