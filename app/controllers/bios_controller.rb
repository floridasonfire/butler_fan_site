class BiosController < ApplicationController

  def index
    @bios = Bio.all()
  end

  def show
    @bio = Bio.find(params[:id])
  end

  def new
    @bio = Bio.new()
  end

  def create
    @bio = Bio.new(bio_params)
    if @bio.save
      redirect_to bios_path
    else
      render :new
    end
  end

  private
  def bio_params
    params.require(:bio).permit(:url, :name, :content)
  end

end
