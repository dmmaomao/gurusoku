class RemoveReviewFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :Review, :text
  end
end
