class WelcomeController < ApplicationController
  def index
    # @all = YoutubeSearch.search('cats', :page => 10, :per_page => 4).first
    @videos = Video.order('created_at DESC')
  end
  
  def demo
  end
  
  def subscriber_request
   @email = connect_params[:email]
   UserMailer.subscriber(@email).deliver_now
   if !Subscriber.exists?(email: @email)
     Subscriber.create(email: @email, user_id: current_user.id)
   end
   redirect_to root_path
  end
  
  private

  def connect_params
    params.permit!
  end
end
