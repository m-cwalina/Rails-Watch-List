class BookmarksController < ApplicationController
  before_action :set_list

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(valid_params)
    if @bookmark.save
      redirect_to @bookmark
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def valid_params
    params.require(:bookmark).permit(:comment)
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
