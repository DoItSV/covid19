class AddRecommendationsToRisks < ActiveRecord::Migration[6.0]
  def change
    add_column :risks, :recomendations, :text
  end
end
