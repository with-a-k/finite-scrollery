class WelcomeController < ApplicationController
  def show
    if current_user && current_user.text_posts_only
      @posts = current_user.text_posts_only
    end
  end
end
