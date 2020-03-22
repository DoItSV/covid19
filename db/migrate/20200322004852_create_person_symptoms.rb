class CreatePersonSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :person_symptoms do |t|
      t.references :person, null: false, foreign_key: true
      t.references :symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
