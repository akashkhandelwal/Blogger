class ArticlesController < ApplicationController

	before_filter :authenticate_author!, except: [:index, :show]

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		@article.save
		if @article.save
			redirect_to article_path(@article), notice: "Article successfully created...!!!!"
		end
	end

	def edit
		@article = Article.find(params[:id])
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path, notice: "Article successfully destroyed...!!!"
	end

	def update
		@article = Article.find(params[:id])
		if @article.update_attributes(params[:article])
			flash.notice = "Article, '#{@article.title}' has been	 successfully updated...!!!"
			redirect_to article_path(@article)
		end
	end

	def add_article_to_author
		@article = Article.find(params[:id])
		@article.author_id = current_author.id
		if @article.save
			redirect_to articles_path
		end
	end
end
