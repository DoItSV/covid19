class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions, id: :uuid do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
