class PageController < ApplicationController
  layout 'standard'

  def index
    if request.get?
      if logged_in?
        flash.now[:notice] = 'You have successfully logged off.'
      end
      logout
    elsif request.post?
      userid = params[:login][:userid]
      if userid.empty?
        flash.now[:warning] = 'Please fill in the userid that will be tested.'
      else
        @user = User.find(:first, :conditions => ['id = ?', userid])
        session[:user_id] = @user.id
        redirect_to :action => 'guidelines'
      end
    end
  end

  def guidelines
    @user = logged_in_user
    if request.post?
      redirect_to :controller => 'article', :action => 'article1'
    end
  end

  def summary
    @user = logged_in_user
    if request.post?
      redirect_to :controller => 'page', :action => 'index'
    end
  end
end
