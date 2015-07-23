Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tumblr, ENV['tumblr_key'], ENV['tumblr_secret']
end