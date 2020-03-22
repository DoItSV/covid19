class CreatePersonSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :person_symptoms, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.references :person, null: false, foreign_key: true, type: :uuid
      t.references :symptom, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
