class RemoveRatingFromReview < ActiveRecord::Migration[7.2]
  def change
    remove_column :reviews, :rating, :integer
  end
end
