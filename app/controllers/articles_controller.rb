class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  # mostra os artigos atuais
  def show
    @article = Article.find(params[:id])
  end

  # gera um novo formulário
  def new
    @article = Article.new
  end

  # criando um novo artigo
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end















