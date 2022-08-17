class Mission < ApplicationRecord
  validates :name, :scientist_id, :planet_id, presence: true
  validates :scientist_id, uniqueness: {scope: :planet_id}

  belongs_to :scientist
  belongs_to :planet
end
