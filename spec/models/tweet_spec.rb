require 'spec_helper'

describe Tweet do

  before(:each) do
    @user = FactoryGirl(:user)
    @attr = { :content => "Lorem ipsum" }
  end

  it "should create a new instance with valid attributes" do
    @user.tweets.create!(@attr)
  end

  describe "user associations" do

    before(:each) do
      @tweet = @user.tweets.create(@attr)
    end

    it "should have a user attribute" do
      @tweet.should respond_to(:user)
    end

    it "should have the right associated user" do
      @tweet.user_id.should == @user.id
      @tweet.user.should == @user
    end

  end
end
