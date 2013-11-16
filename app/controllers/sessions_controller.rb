class SessionsController < ApplicationController
WeiboOAuth2::Config.api_key = "2065192073"
WeiboOAuth2::Config.api_secret = "3a2eef3d956f160ff15dc17739c11009"
WeiboOAuth2::Config.redirect_uri = "http://127.0.0.1:3000/sessions/callback"   

  def index
	
  end
  def new
	client = WeiboOAuth2::Client.new
	redirect_to client.authorize_url
  end
  def callback
        client = WeiboOAuth2::Client.new
	access_token = client.auth_code.get_token(params[:code].to_s)
  	session[:uid] =  access_token.params["uid"]
  	session[:access_token] =  access_token.token
  	session[:expires_at] =  access_token.expires_at
	#client.users.show(session[:uid])
	p access_token.inspect
    	p access_token.validated?
	@screen_name=client.users.screen_name
	if session[:uid]
	    @user = User.find_by_id(session[:uid])
	    @statuses = client.statuses
	    if @user
		@curent_user=@user
		redirext_to sessions_create_path
	    else
		@user=client.users.show_by_uid(session[:uid]) 
		redirect_to users_create_path
	    end
	end
  end
  def create
	 client = WeiboOAuth2::Client.new
	  if session[:access_token] && !client.authorized?
	    token = client.get_token_from_hash({:access_token => session[:access_token], :expires_at => session[:expires_at]}) 
	    p "*" * 80 + "validated"
	    p token.inspect
	    p token.validated?
	end
	@text="Book created!"
  end
  def find
	client = WeiboOAuth2::Client.new
  	client.get_token_from_hash({:access_token=>session[:token],:expires_at=>session[:expires_at]})
        statuses = client.statuses
  end

  def select
  end
end
