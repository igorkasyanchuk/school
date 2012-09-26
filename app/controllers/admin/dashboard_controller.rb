class Admin::DashboardController < InheritedResources::Base
  USER, PASSWORD = 'admin', 'admin'
  before_filter :authenticate

  private
    
    def authenticate
      authenticate_or_request_with_http_basic do |id, password|
        id == USER && password == PASSWORD
      end
    end

end
