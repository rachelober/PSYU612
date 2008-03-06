class ArticleController < ApplicationController
  layout 'standard'

  def article1
    @user = logged_in_user
    @article = @user.article1
    @article_width = @user.article1_width
    if request.post?
      redirect_to :controller => 'pause', :action => 'pausea1'
    end  
  end

  def article2
    @user = logged_in_user
    @article = @user.article2
    @article_width = @user.article2_width
    if request.post?
      redirect_to :controller => 'pause', :action => 'pausea2'
    end  
  end

  def article3
    @user = logged_in_user
    @article = @user.article3
    @article_width = @user.article3_width
    if request.post?
      redirect_to :controller => 'pause', :action => 'pausea3'
    end  
  end
end
