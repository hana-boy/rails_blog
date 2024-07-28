class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render status: 200, json: { articles: articles }
  end
end
