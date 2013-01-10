class AuthorsController < ApplicationController
  def show
  end

  def index
    @authors = Author.all
  end

  def create
  end

  def destroy
    @author = Author.find(:id)
    @author.destroy
    redirect_to root_path
  end

  def edit
  end
end
