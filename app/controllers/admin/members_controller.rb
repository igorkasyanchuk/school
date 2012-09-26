class Admin::MembersController < Admin::DashboardController
  respond_to :html, :xml, :json
  belongs_to :klass

  defaults :resource_class => Student, :collection_name => 'students', :instance_name => 'student'
end