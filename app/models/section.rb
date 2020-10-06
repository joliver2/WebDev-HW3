class Section < ApplicationRecord
  belongs_to :course
  belongs_to :professor
  belongs_to :semester
  has_and_belongs_to_many :students
  validates :course_id, presence: true
  validates :professor_id, presence: true
  validates :year, presence: true
  validates :semester_id, presence: true
  validates :student_ids, presence: true
end
