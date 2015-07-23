class User < ActiveRecord::Base
  def self.from_omniauth(auth_info)
    if user = find_by(uid: auth_info.uid)
      user
    else
      create({uid: auth_info.uid,
              token: auth_info.credentials.token,
              secret: auth_info.credentials.secret})
    end
  end

  def tumblr_client
    Tumblr.configure do |config|
      config.consumer_key = ENV["tumblr_key"]
      config.consumer_secret = ENV["tumblr_secret"]
      config.oauth_token = token
      config.oauth_token_secret = secret
    end
    @client = Tumblr::Client.new
  end

  def tumblr_dashboard_feed
    tumblr_client.dashboard["posts"]
  end

  def text_posts_only
    tumblr_client.dashboard["posts"].select{ |post| post["type"] == "text" }
  end
end
