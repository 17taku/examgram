class PhotosController < ApplicationController
  before_action :set_photo, only:[:edit, :update, :destroy]

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photos_params)
    if @photo.save
      redirect_to photos_path, notice: "作成が完了しました！"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @photo.update(photos_params)
    redirect_to photos_path, notice: "編集が完了しました！"
  end

  def destroy
    @photo.destroy
    redirect_to photos_path, notice: "削除が完了しました！"
  end

  def confirm
    @photo = Photo.new(photos_params)
  end

private
  def photos_params
    params.require(:photo).permit(:title, :content)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end

end
