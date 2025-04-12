class GalleryController < ApplicationController
  def mine
    @friends = Friend.all
    # @friends = @friends.where("first_name LIKE ?", "%#{params[:search]}%") if params[:search].present?
  end
  def show
    @friend = Friend.find(params[:id])
  end
  def new
    @friend = Friend.new
  end
  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to gallery_path, notice: "Friend was successfully created."
    else
      render :new
    end
  end
  def edit
    @friend = Friend.find(params[:id])
  end
  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_params)
      redirect_to gallery_path, notice: "Friend was successfully updated."
    else
      render :edit
    end
  end
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to gallery_path, notice: "Friend was successfully deleted."
  end
  private
  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :email, :phone)
  end
  def set_friend
    @friend = Friend.find(params[:id])
  end
 
end
