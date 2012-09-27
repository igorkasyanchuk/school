class Klass < ActiveRecord::Base
  attr_accessible :name, :school_id, :student_ids

  validates_presence_of :name

  belongs_to :school
  has_many :klasses_students, :class_name => "KlassStudent", :dependent => :destroy
  has_many :students, :through => :klasses_students, :order => :position
end
