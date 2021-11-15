class List < ApplicationRecord
  validates :name, presence: true, uniqueness: tru
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end
