class School < ActiveRecord::Base
  attr_accessible :name

  has_many :students, :dependent => :destroy
  has_many :klasses, :dependent => :destroy

  validates_presence_of :name
end
