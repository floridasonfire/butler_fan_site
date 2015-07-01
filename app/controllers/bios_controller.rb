class BiosController < ApplicationController

  def index
    @order_by = params[:Order]
    if @order_by == "Name"
      @bios = Bio.order(:name)
    elsif @order_by == "Updated Last"
      @bios = Bio.order(:updated_at)
    elsif @order_by == "Most Recent"
      @bios = Bio.order(:created_at)
    else
      @bios = Bio.all()
    end
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
