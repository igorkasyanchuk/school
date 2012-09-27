class KlassStudent < ActiveRecord::Base
  set_table_name 'klasses_students'
  attr_accessible :position, :school_id, :student_id
  belongs_to :student
  belongs_to :klass
end