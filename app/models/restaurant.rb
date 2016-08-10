class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, uniqueness: true, presence: true
    validates :address, presence: true
    validates :category, presence: true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
end
