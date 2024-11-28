class Plant < ApplicationRecord
  belongs_to :garden
  has_many :completions, dependent: :destroy

  validates :name, presence: true
end
