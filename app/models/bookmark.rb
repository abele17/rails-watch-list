class Bookmark < ApplicationRecord
  # Associations
  belongs_to :movie
  belongs_to :list

  # Validations
  validates :comment, length: { minimum: 6 }, presence: true
  validates :movie_id, presence: true
  validates :list_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "should be unique for a given movie/list couple" }
end
