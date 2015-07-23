class AuthController < ApplicationController
  def tumblr
    redirect_to 'http://www.tumblr.com/oauth/authorize'
  end
end
