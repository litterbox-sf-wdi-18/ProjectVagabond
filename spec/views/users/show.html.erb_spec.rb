require "rails_helper"

RSpec.describe "the user profile page" do

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

    @title = "Well what do ya know!?"
    @user.logs << Log.new( {:title => @title } )
  end

  it "displays basic profile information" do
    assign(:user, @user)

    render :template => "users/show.html.erb"

    expect(rendered).to match /Sweeny/
    expect(rendered).to match /Todd/
    expect(rendered).to match /London/
    expect(rendered).to match Date.today.to_s
  end

  it "displays log posts authored by the user" do
    assign(:user, @user)

    render :template => "users/show.html.erb"

    expect(rendered).to match @title
  end

  # TEAR DOWN
  after(:all) do
    # delete the new user, so we don't clutter the test database
    @user.destroy
  end
end
