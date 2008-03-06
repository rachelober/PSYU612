class QuestionController < ApplicationController
  layout 'standard'

  def question1
    @user = logged_in_user
    @article = @user.article1
    @answer = Answer.find (:first, :conditions => ['id = ?', @user.id])
  end

  def submit1
    @user = logged_in_user
    @answer = Answer.find (:first, :conditions => ['id = ?', @user.id])
    @answer.answer1_01 = params[:question][:answer_1]
    @answer.answer1_02 = params[:question][:answer_2]
    @answer.answer1_03 = params[:question][:answer_3]
    @answer.answer1_04 = params[:question][:answer_4]
    @answer.answer1_05 = params[:question][:answer_5]
    @answer.answer1_06 = params[:question][:answer_6]
    @answer.answer1_07 = params[:question][:answer_7]
    @answer.answer1_08 = params[:question][:answer_8]
    @answer.answer1_09 = params[:question][:answer_9]
    @answer.answer1_10 = params[:question][:answer_10]
    @answer.answer1_11 = params[:question][:answer_11]
    @answer.answer1_12 = params[:question][:answer_12]
    @answer.answer1_13 = params[:question][:answer_13]
    @answer.answer1_14 = params[:question][:answer_14]
    @answer.answer1_15 = params[:question][:answer_15]
    @answer.save
    redirect_to :controller => 'pause', :action => 'pauseq1'
  end

  def question2
    @user = logged_in_user
    @article = @user.article2
  end

  def submit2
    @user = logged_in_user
    @answer = Answer.find (:first, :conditions => ['id = ?', @user.id])
    @answer.answer2_01 = params[:question][:answer_1]
    @answer.answer2_02 = params[:question][:answer_2]
    @answer.answer2_03 = params[:question][:answer_3]
    @answer.answer2_04 = params[:question][:answer_4]
    @answer.answer2_05 = params[:question][:answer_5]
    @answer.answer2_06 = params[:question][:answer_6]
    @answer.answer2_07 = params[:question][:answer_7]
    @answer.answer2_08 = params[:question][:answer_8]
    @answer.answer2_09 = params[:question][:answer_9]
    @answer.answer2_10 = params[:question][:answer_10]
    @answer.answer2_11 = params[:question][:answer_11]
    @answer.answer2_12 = params[:question][:answer_12]
    @answer.answer2_13 = params[:question][:answer_13]
    @answer.answer2_14 = params[:question][:answer_14]
    @answer.answer2_15 = params[:question][:answer_15]
    @answer.save
    redirect_to :controller => 'pause', :action => 'pauseq2'
  end

  def question3
    @user = logged_in_user
    @article = @user.article3
  end
  
  def submit3
    @user = logged_in_user
    @answer = Answer.find (:first, :conditions => ['id = ?', @user.id])
    @answer.answer3_01 = params[:question][:answer_1]
    @answer.answer3_02 = params[:question][:answer_2]
    @answer.answer3_03 = params[:question][:answer_3]
    @answer.answer3_04 = params[:question][:answer_4]
    @answer.answer3_05 = params[:question][:answer_5]
    @answer.answer3_06 = params[:question][:answer_6]
    @answer.answer3_07 = params[:question][:answer_7]
    @answer.answer3_08 = params[:question][:answer_8]
    @answer.answer3_09 = params[:question][:answer_9]
    @answer.answer3_10 = params[:question][:answer_10]
    @answer.answer3_11 = params[:question][:answer_11]
    @answer.answer3_12 = params[:question][:answer_12]
    @answer.answer3_13 = params[:question][:answer_13]
    @answer.answer3_14 = params[:question][:answer_14]
    @answer.answer3_15 = params[:question][:answer_15]
    @answer.save
    redirect_to :controller => 'pause', :action => 'pauseq3'
  end

  def general
    @user = logged_in_user
  end

  def general_submit
    @user = logged_in_user
    @answer = User.find (:first, :conditions => ['id = ?', @user.id])
    @answer.age = params[:general][:age]
    @answer.avgcompuse = params[:general][:avgcompuse]
    @answer.comptime = params[:general][:comptime]
    @answer.howoftennews = params[:general][:howoftennews]
    @answer.onlinepaper = params[:general][:onlinepaper]
    @answer.monitorsize = params[:general][:monitorsize]
    @answer.resolution = params[:general][:resolution]
    @answer.save
    redirect_to :controller => 'page', :action => 'summary'
  end
end
