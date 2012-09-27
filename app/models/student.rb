class Student < ActiveRecord::Base
  attr_accessible :name, :school_id, :klass_ids

  validates_presence_of :name

  belongs_to :school
  has_and_belongs_to_many :klasses

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
