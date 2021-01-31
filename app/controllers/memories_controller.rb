class MemoriesController < ApplicationController
  def new
     @memorie = Memorie.new
  end

  def create
    @memorie = Memorie.new(memorie_params)
    if @memorie.save
      redirect_to prefecture_path(params[:format])
    else
      render :new
    end
  end

  def show
    @memorie = Memorie.find(params[:id])
  end

  def destroy
    @memorie = Memorie.find(params[:format])
    image = @memorie.images.where(blob_id: params[:id])
    image.purge
    redirect_to prefecture_path(params[:prefecture_id])
  end

  private

  def memorie_params
    params.require(:memorie).permit(:day,:description,:prefecture_id, images: [],).merge(user_id: current_user.id)
  end

end