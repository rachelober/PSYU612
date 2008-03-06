class PauseController < ApplicationController
  layout 'standard'

  # Pause after reading first article
  def pausea1
    if request.post?
      redirect_to :controller => 'question', :action => 'question1'
    end
  end

  # Pause after reading second article
  def pausea2
    if request.post?
      redirect_to :controller => 'question', :action => 'question2'
    end
  end

  # Pause after reading third article
  def pausea3
    if request.post?
      redirect_to :controller => 'question', :action => 'question3'
    end
  end

  # Pause after answering first article questions
  def pauseq1
    if request.post?
      redirect_to :controller => 'article', :action => 'article2'
    end
  end

  # Pause after answering second article questions
  def pauseq2
    if request.post?
      redirect_to :controller => 'article', :action => 'article3'
    end
  end

  # Pause after answering third article questions
  def pauseq3
    if request.post?
      redirect_to :controller => 'question', :action => 'general'
    end
  end
end
