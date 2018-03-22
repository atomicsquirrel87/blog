class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article
  scope :rating_desc, -> { order(rating: :desc)}
  scope :rating_asc, -> { reorder(rating: :asc)}
  validates :body, presence: true
  validates :user, presence: true
  validates :article, presence: true
  validates :rating, numericality: { only_integer: true }
end
