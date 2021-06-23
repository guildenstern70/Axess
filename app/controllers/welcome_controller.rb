#
# Axess
# An online paste service
# (C) Alessio Saltarin 2021
# MIT License
#

class WelcomeController < ApplicationController

  def index
    @app_version = '0.1'
    @env = environment
    logger.info('Welcome Controller - page: index')
  end

end
