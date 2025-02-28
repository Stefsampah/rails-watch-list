class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # Le commentaire associé à un signet ne peut pas avoir moins de 6 caractères.
  validates :comment, presence: true, length: {minimum: 6}
  validates :movie_id, uniqueness: { scope: :list_id }
end
