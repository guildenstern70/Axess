#
# Axess
# An online pastes service
# (C) Alessio Saltarin 2021
# MIT License
#

class ApplicationController < ActionController::Base

  def initialize
    super
    @app_version = '0.1'
    @env = environment
  end

  def environment
    Rails.env
  end

end
