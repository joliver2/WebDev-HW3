class Professor < ApplicationRecord
  has_many :sections
  validates :name, presence: true
  validates :office, presence: true
end
