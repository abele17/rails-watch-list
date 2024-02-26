class Movie < ApplicationRecord
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # Associations
  has_many :bookmarks
end
  # Custom validation or callback to prevent destruction if it has bookmark children
#   before_destroy :check_for_bookmarks

#   private

#   def check_for_bookmarks
#     if bookmarks.any?
#       errors.add(:base, 'Cannot destroy movie as it has bookmarks')
#       throw :abort
#     end
#   end
# end

