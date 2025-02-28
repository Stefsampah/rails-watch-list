class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  # # should not be able to destroy self if has bookmarks children
  # before_validation :ensure_bookmarks
  # before_validation :ensure_username_has_value, on: :create

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # tu ne peux supp un film s'il est dans signet
end
