class ResultController < ApplicationController
  def index
    @user_pages, @users = paginate :users, :per_page => 24, :order_by => 'id'
  end

  def calculate
    @users = User.find(:all)
    @users.each{|user|
      article1 = @user.article1
      article2 = @user.article2
      article3 = @user.article3

      article1_width = @user.article1_width
      article2_width = @user.article2_width
      article3_width = @user.article3_width

      answers = Answer.find(:all, :conditions => 
       
  end  
end
