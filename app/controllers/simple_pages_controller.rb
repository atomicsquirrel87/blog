class SimplePagesController < ApplicationController
  def index
  end

  def about
  end

  def landing_page
    @articles = Article.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end

end
