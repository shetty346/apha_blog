class ArticlesController < ApplicationController
    def show
      @article = Article.find(params[:id])
    end
    def index
      @articles = Article.all
    end

    def new
      @new_article=Article.new
        
    end

    def edit

    end

    def create
        @new_article=Article.new(params.require(:article).permit(:title,:description))#whitelisting the attributes
        if @new_article.save
          flash[:notice]="Article was created sucessfully"
          redirect_to @new_article
        else
          render  :new, status: :unprocessable_entity
        end
    end


    def update
      
    end
end
