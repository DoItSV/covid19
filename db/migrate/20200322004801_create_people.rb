class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.integer :age
      t.integer :sex
      t.references :department, null: false, foreign_key: true, type: :uuid
      t.references :city, null: false, foreign_key: true, type: :uuid
      t.integer :result

      t.timestamps
    end
  end
end
