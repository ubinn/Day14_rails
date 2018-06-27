class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :user_signed_in?, :current_user
  
  
  def user_signed_in?
    session[:sign_in_user].present?
  end
  
  def authenticate_user! # 로그인 되어있지 않은 유저 로그인 페이지로 보내주는것
    redirect_to sign_in_path unless user_signed_in? # redirect_to "sign_in" 이랑 같은거지만, prefix_path로도 쓸수있다.
  end
 
  def current_user # 유저가 로그인 되어있을때만 현재 유저 찾아주는거.
    @current_user = User.find(session[:sign_in_user]) if user_signed_in? 
  end
  
end
