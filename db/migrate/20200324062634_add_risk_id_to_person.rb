class AddRiskIdToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :risk_id, :uuid
  end
end
