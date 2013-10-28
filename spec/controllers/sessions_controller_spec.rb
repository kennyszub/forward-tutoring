require 'spec_helper'

describe SessionsController do

  describe "user login", :type => :controller do
    it "should let users log in" do
      post :login
      response.should be_success
    end
  end
end
