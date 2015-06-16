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

  context "has_secure_password" do
    it "does something fancy with the password" do
      expect(@user.password_digest).not_to eq @params[:password]
    end
  end

  # TEAR DOWN
  after(:all) do
    # delete the new user, so we don't clutter the test database
    @user.destroy
  end

end
