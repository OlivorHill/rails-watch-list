class AddMovieRefToReviews < ActiveRecord::Migration[7.2]
  def change
    add_reference :reviews, :movie, null: false, foreign_key: true
  end
end
