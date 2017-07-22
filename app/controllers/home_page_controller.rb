class HomePageController < ApplicationController
  before_action :authenticate_user!

  def index
    return unless current_user.provider == 'facebook'
    @facebook_data = current_user.facebook(current_user.access_token).get_object('me?fields=name,email,friends')
  end

end
