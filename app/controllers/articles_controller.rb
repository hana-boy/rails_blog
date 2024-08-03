class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    articles = Article.all
    render status: 200, json: { articles: articles }
  end

  def show
    article = Article.find(params[:id])
    render status: 200, json: article
  end

  def create
    request_body = params.permit(:user_id, :title, :content, :url)
    article = Article.create(request_body)
    render status: 200, json: article.id
  end

  def update
    request_body = params.permit(:user_id, :title, :content, :url)
    article = Article.find(params[:id])
    article.user_id = params[:user_id]
    article.title = params[:title]
    article.content = params[:content]
    article.url = params[:url]
    article.save

    render status: 200, json: article.id
  end

  def destroy
    Article.delete(params[:id])

    render status: 200, json: { result: true }
  end
end
