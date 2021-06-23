#
# Axess
# An online paste service
# (C) Alessio Saltarin 2021
# MIT License
#

class ApplicationController < ActionController::Base

  def environment
    Rails.env
  end

end
