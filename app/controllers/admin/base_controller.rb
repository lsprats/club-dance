class Admin::BaseController < InheritedResources::Base
  before_action :authenticate_admin!

  layout 'admin'

  def home; end
end
