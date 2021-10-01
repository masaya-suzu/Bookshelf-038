class BooksController < ApplicationController
  before_action :move_to_index, except: [:index, :search]

  def index
    #@books = Book.all.order("created_at DESC")
    @books = Book.all
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.create(book_params)
    if @books.save
      redirect_to root_path
    else
      render template: "books/new"
    end 
  end

  def search
    @books = Book.search(params[:keyword])
  end

  private
  def book_params
    params.require(:book).permit(:book_title, :book_number, :book_author, :book_genre, :book_publisher, :book_type, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
