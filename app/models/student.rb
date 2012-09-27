class Student < ActiveRecord::Base
  attr_accessible :name, :school_id, :klass_ids

  validates_presence_of :name

  belongs_to :school
  has_many :klasses_students, :class_name => "KlassStudent", :dependent => :destroy
  has_many :klasses, :through => :klasses_students

  scope :by_name, order("name")

  def self.match(query)
    where('name like ?', "%#{query}%")
  end

  def self.except_klass_students(klass)
    ids = klass.student_ids
    ids = [0] if ids.blank?
    where("id not in (?)", ids)
  end

  def for_js
    {:id => self.id, :value => self.name}
  end

end
