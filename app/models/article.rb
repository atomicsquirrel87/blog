class Article < ApplicationRecord

  def self.search(search_term)
    if Rails.env.production?
      Article.where("title ilike ?", "%#{search_term}%")
    else Rails.env.development?
      Article.where("title LIKE ?", "%#{search_term}%")
    end
  end

end
