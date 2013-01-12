class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end

  def create
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    redirect_to root_path
  end

  def edit
  end

  def remove_article_from_author
    ArticleStore.find_by_author_id_and_article_id(current_author.id, params[:id]).destroy
    redirect_to author_path(current_author)
  end
end
