class HomeController < ApplicationController
	skip_before_action :authenticate_user!, only: :index
  
  def index
  	@posts = Post.order_by_reverse_chronological
  	@profiles = Profile.all
  end

end
