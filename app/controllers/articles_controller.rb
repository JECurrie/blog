class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

<<<<<<< HEAD
	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "Article was successfully created"
			redirect_to article_path( @article )
		else
			render 'new'
		end
	end

  def show
  	@article = Article.find(params[:id])
  end
  	
private
	def article_params
		params.require(:article).permit(:title, :description)
	end  	
end	
=======
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_show(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end  	
end	
>>>>>>> 26287788da9fe2b225e62ca55c7621fe5ea461af
