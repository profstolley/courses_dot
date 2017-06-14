class Course < ApplicationRecord
  has_many :students, through: :enrollments
end
