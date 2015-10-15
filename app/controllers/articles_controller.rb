class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end



# def create
#   @article = Article.new(params[:article])  #
#
#   @article.save
#   redirect_to @article
# end
# end


  # def create                                #action which saves our article
  #   render plain: params[:article].inspect  #render method take hash with key plain
  # end                                       #value params[:article].inspect
