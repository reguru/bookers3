class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.new
    @user_book = Book.find(params[:id])
    @user = @user_book.user
    
  end

  def index
    @book = Book.new
    @user = current_user
    @books = Book.all
  end

  def edit
  end
  
  def update
    
  end 
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title,:body,:image)
  end
end
