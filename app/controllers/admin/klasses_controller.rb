class Admin::KlassesController < Admin::DashboardController
  respond_to :html, :xml, :json
  actions :all, :except => :show

  belongs_to :school

  def create
    create! do |success, failure|
      success.html { redirect_to [:admin, parent, :klasses] }
    end
  end

  def update
    update! do |success, failure|
      success.html { redirect_to [:admin, parent, :klasses] }
    end
  end   
end