class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments, id: :uuid, default: 'uuid_generate_v4()' do |t|
      t.string :name

      t.timestamps
    end
  end
end
