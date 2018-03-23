class Article < ApplicationRecord
  belongs_to :user
  has_many :comments

  def self.search(search_term)
    if Rails.env.production?
      Article.where("title ilike ?", "%#{search_term}%")
    else
      Article.where("title LIKE ?", "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first if comments.count > 1
  end

  def average_rating
    comments.average(:rating).to_f
  end

end
