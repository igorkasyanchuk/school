class Student < ActiveRecord::Base
  attr_accessible :name, :school_id, :klass_ids

  validates_presence_of :name

  belongs_to :school
  has_and_belongs_to_many :klasses
end
