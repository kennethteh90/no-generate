class BookmarksController < ApplicationController

  before_action :prepare_book

  def index
    @bookmarks = Bookmark.where(book_id: params[:book_id])
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = @book.bookmarks.new(bookmark_params)
    if @bookmark.save
      redirect_to book_bookmarks_path
    else
      render :new
    end
  end

  def edit
    @bookmark = @book.bookmarks.find(params[:id])
  end

  def update
    @bookmark = @book.bookmarks.find(params[:id])
    if @bookmark.update(bookmark_params)
      redirect_to book_bookmarks_path
    else
      render :edit
    end
  end

  def show
    @bookmark = @book.bookmarks.find(params[:id])
  end

  def destroy
    @book.bookmarks.destroy(params[:id])
    redirect_to book_bookmarks_path
  end

  private

    def bookmark_params
      params.require(:bookmark).permit(:page, :description)
    end

    def prepare_book
      @book = Book.find(params[:book_id])
    end

end
