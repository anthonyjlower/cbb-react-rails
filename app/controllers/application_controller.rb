class ApplicationController < ActionController::Base
  def redis
    @redis ||= Redis.new
  end
end
