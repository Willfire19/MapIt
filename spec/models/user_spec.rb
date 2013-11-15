require 'spec_helper'

describe "User" do
  
	before do
	  @user = User.new(username: "Ex User", email: "example@yahoo.com",
	  				   password: "password", password_confirmation: "password")
	end

	subject { @user }

	it { should respond_to(:username) }
	it { should respond_to(:email) }
	it { should respond_to(:password) }
	it { should respond_to(:password_confirmation) }
	it { should respond_to(:maps) }

	it { should be_valid }

	describe "when password is not present" do
	  before { @user.password = @user.password_confirmation = " " }
	  it { should_not be_valid }
	end

	describe "when password doesn't match confirmation" do
	  before { @user.password_confirmation = "not password" }
	  it { should_not be_valid }
	end

	describe "with a password that's too short" do
	  before { @user.password = @user.password_confirmation = "a" * 5 }
	  it { should be_invalid }
	end

end