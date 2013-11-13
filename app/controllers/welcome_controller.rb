class WelcomeController < ApplicationController

 def index
	@addr = params[:email_addr]
	# TODO validate the email addr
	CommentMailer.sendmail("hitwavebook@163.com", @addr.to_s, "hitwave", "yourbook", @message).deliver
  end

end
