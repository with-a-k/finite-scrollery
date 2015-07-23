class PostsController < ApplicationController
  def new

  end

  def create
    current_user.tumblr_client.text(current_user.uid, {#options go in here
      title: params[:title],
      body: params[:body],
      tags: params[:tags]
      })
    redirect_to root_path
  end
end
