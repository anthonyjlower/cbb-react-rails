class ApplicationController < ActionController::Base
  def redis
    @redis ||= Redis.new
  end

  # def current_time_central
  #   DateTime.current.in_time_zone('Central Time (US & Canada)')
  # end
end
