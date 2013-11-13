class WelcomeController < ApplicationController
WeiboOAuth2::Config.api_key = "2065192073"
WeiboOAuth2::Config.api_secret = "3a2eef3d956f160ff15dc17739c11009"
WeiboOAuth2::Config.redirect_uri = "'http://127.0.0.1/callback"   


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
