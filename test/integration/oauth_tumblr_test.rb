require 'test_helper'

class UserCanLogInWithTumblrTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  def setup
    Capybara.app = TumblrOath::Application
    reset_session!
  end

  def test_user_logs_in_with_tumblr
    visit '/'
    assert page.has_content?('Log in with tumblr')
  end
end