class UsersController < ApplicationController
  def new
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @user_books = @user.books
  end

  def index
    @book = Book.new
    @user = current_user
    @users = User.all
  end

  def edit
  end
  
  def update
    
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
