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

  def new
    @paste = Paste.new
  end

  def create
    @paste = Paste.new(self.article_params)

    if @paste.save
      redirect_to @paste
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:paste).permit(:title, :body)
  end

end
