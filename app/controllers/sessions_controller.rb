class SessionsController < ApplicationController
  before_filter :authenticate_user, :only => [:home, :profile, :setting]
  before_filter :save_login_state, :only => [:login, :login_attempt]

  def new
  end

  def create
  end

  def destroy
  end

  def login
    #Login Form
  end

  def login_attempt
    user = params[:user]
    authorized_user = User.authenticate(user[:email], user[:password])
    if authorized_user
      session[:user_id] = authorized_user.id
      print ""
      print ""
      flash[:notice] = "Wow Welcome again, you logged in as #{authorized_user.username}"
      print "DADFASFSAFDSAFDAS"
      print ""
      print ""
      redirect_to user_path(authorized_user), :layout => "users/show.html.haml"

    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      redirect_to '/jkklj'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action => 'login'
  end
end
