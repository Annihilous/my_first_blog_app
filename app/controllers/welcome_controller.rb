class WelcomeController < ApplicationController
  def about
  end

  def random
  	redirect_to blog_post_path(id: rand(1..BlogPost.all.length))
  end

  def my_profile
  	@user = current_user
  end

  def users
  	@users = User.all
  end
 end
