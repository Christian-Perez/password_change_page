class LoginController < ApplicationController
  # skip_before_filter :verify_authenticity_token #deprication warning
  # skip_before_action :verify_authenticity_token
  def index
    @page = "login Page"
  end
end
