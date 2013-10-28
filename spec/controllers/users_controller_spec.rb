require 'spec_helper'

describe UsersController do
  before(:each) do 
    session[:user_id] = 1
    user = mock('User', :id => 1)
    u = User.new(:id => 1, :email => 'hello@me.com', :username => 'chris', :password => 'passwrd')
    u.save!
  end
  describe "user can be created", :type => :controller do
    it "should let users be created" do
      get :create, :id => 2, :email => 'hello@me.com', :username => 'chris', :password => 'passwrd'
      response.should_not be_success
    end
  end
  
  describe "user authenticates", :type => :controller do 
    it "should let users log in" do
      get :show, :id => 1
      response.should be_success
    end
  end
end
