class BooksController < ApplicationController
  def show
	@addr = params[:email_addr]
	# TODO validate the email addr
	CommentMailer.sendmail("hitwavebook@163.com", @addr.to_s, "hitwave", "your_weibo_book", @message).deliver
  end

  #def send
  #end
end
