
class SessionsController < ApplicationController
  
    def create
        @user = User.find_or_create_from_auth_hash(request.env["omniauth.auth"])
        session[:user_id] = @user.id
        cookies[:user_uid] = @user.uid
        cookies[:user_token] = @user.oauth_token
        cookies[:user_token] = { :value => @user.oauth_token, :expires => @user.oauth_expires_at }
        redirect_to root_path
    end
  
    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end
  
end