class List < ApplicationRecord
	has_many :movies, through: :bookmarks, dependent: :destroy
	validates :name, uniqueness: true, presence: true
	has_many :bookmarks, dependent: :destroy
end
