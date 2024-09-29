class CreateReviews < ActiveRecord::Migration[7.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
