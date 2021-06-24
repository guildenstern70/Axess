#
# Axess
# An online pastes service
# (C) Alessio Saltarin 2021
# MIT License
#

class PastesController < ApplicationController

  def index
    @pastes = Paste.all
  end

  def show
    @paste = Paste.find(params[:id])
  end

end
