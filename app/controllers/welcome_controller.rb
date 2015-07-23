class WelcomeController < ApplicationController
  def show
    if current_user
      @posts = current_user.text_posts_only
    end
  end
end
