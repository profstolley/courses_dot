class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :student
  accepts_nested_attributes_for :student
end
