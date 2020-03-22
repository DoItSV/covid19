class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.integer :age
      t.integer :sex
      t.references :department, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.integer :result

      t.timestamps
    end
  end
end
