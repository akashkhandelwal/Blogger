class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
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
end
