class CreateRisks < ActiveRecord::Migration[6.0]
  def change
    create_table :risks, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :name
      t.string :key
      t.text :description

      t.timestamps
    end
  end
end
