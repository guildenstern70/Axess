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

    nr_of_pastes = Paste.count
    logger.info "Number of pastes = #{nr_of_pastes}"

    if @paste.save
      if nr_of_pastes > 6
        logger.info 'Number of pastes is > 6.'
        id_to_delete = Paste.first.id
        logger.info "Deleting ID == #{id_to_delete}"
        Paste.find(id_to_delete).destroy
      end
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
