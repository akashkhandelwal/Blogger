class TagsController < ApplicationController
  def index
  	@tags = Tag.all
  end

  def show
  	  @tag = Tag.find(params[:id])
  end

  def destroy
  	@tag = Tag.find(params[:id])
  	@tag.destroy
  	redirect_to tags_path, notice: "Tag successfully deleted...!!!"
  end

  def add_tag_to_author
    @tag = Tag.find(params[:id])
    store = @tag.create_new_tag_store
    store.author_id = current_author.id
    if @tag.save
      redirect_to tags_path
    end
  end
end
