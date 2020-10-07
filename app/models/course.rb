class Course < ApplicationRecord
  belongs_to :department
  has_many :sections
  validates :department_id, presence: true
  validates :number, presence: true
  validates :hours, presence: true

  def self.search(search)
    where("lower(courses.department_id) LIKE :search OR lower(courses.hours) Like :search OR lower(courses.number) LIKE :search", search: "%#{search.downcase}%").uniq
    end

end

#format: { with: /^(?=.*[A-Z]).+$/,
#:hours, format: { with: /^(?=.*[A-Z]).+$/, allow_blank: false }