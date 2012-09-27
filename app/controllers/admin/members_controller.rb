class Admin::MembersController < Admin::DashboardController
  respond_to :html, :xml, :json, :js
  belongs_to :klass

  defaults :resource_class => Student, :collection_name => 'students', :instance_name => 'student'

  def create
    student = parent.school.students.find(params[:id])
    parent.students << student
  end

  def destroy
    student = parent.students.find(params[:id])
    parent.students.delete(student)
  end

  def sort
    student_ids = params[:students]
    klasses_students = parent.klasses_students
    klasses_students.each do |ks|
      ks.update_attribute :position, student_ids.index(ks.student_id.to_s) + 1
    end
    render :nothing => true
  end
end