class MemoriesController < ApplicationController
  def new
     @memorie = Memorie.new
  end

  def create
    @memorie = Memorie.new(memorie_params)
    if @memorie.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def memorie_params
    params.require(:memorie).permit(:description, :image, :prefecture_id).merge(user_id: current_user.id)
  end

end
