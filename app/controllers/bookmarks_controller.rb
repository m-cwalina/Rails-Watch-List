class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(valid_params)
    if @bookmark.save
      redirect_to @list
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
end
