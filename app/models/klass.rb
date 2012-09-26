class Klass < ActiveRecord::Base
  attr_accessible :name, :school_id, :student_ids

  validates_presence_of :name

  belongs_to :school
  has_and_belongs_to_many :students
end
