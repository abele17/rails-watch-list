class ChangeRankingToRating < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :ranking, :rating
  end
end
