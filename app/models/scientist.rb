class Scientist < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :field_of_study, presence: true

  has_many :missions, dependent: :destroy
  has_many :planets, through: :missions
end
