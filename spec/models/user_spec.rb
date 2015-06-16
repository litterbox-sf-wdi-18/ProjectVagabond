require 'rails_helper'

RSpec.describe User, :type => :model do

  # SETUP
  before(:all) do
    @params = {
                  :first_name => "Sweeny",
                  :last_name => "Todd",
                  :password => "12345",
                  :email => "st@barbershop.com",
                  :home_city => "London"
              }
    # create a new user for use in all tests
    @user = User.create(@params)
  end


  subject { @user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:home_city) }
  it { should be_valid }


  context "has_secure_password" do

    it { should respond_to(:password_digest) }

    it "does something fancy with the password" do
      expect(@user.password_digest).not_to eq @params[:password]
    end

  end

  context "User#confirm" do
    it "confirms correct password" do
      expect( User.confirm(@params) ).to eq @user
    end

    it "rejects incorrect password"  do
      expect( User.confirm({:email => @params[:email], :password => "BAD"}) ).to be false
    end
  end


  # TEAR DOWN
  after(:all) do
    # delete the new user, so we don't clutter the test database
    @user.destroy
  end

end
