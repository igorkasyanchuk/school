class Admin::MembersController < Admin::DashboardController
  respond_to :html, :xml, :json, :js
  belongs_to :klass

  defaults :resource_class => Student, :collection_name => 'students', :instance_name => 'student'

  def create
    student = parent.students.find(params[:id])
    parent.students << student
  end

  def destroy
    student = parent.students.find(params[:id])
    parent.students.delete(student)
    redirect_to admin_klass_members_path(parent)
  end
end