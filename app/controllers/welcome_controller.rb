class WelcomeController < ApplicationController

 def index
	
	#redirect_to :action=>"show"
 end
 def show
	@addr = params[:email_addr]
	# TODO validate the email addr
	CommentMailer.sendmail("hitwavebook@163.com", @addr.to_s, "hitwave", "yourbook", @message).deliver
  end
  def about
  end
  def contact
  end
  def help
  end
end 
