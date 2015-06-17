require "rails_helper"

RSpec.describe "the user profile page" do

  before(:all) do
    @params = {
                  :first_name => "Sweeny",
                  :last_name => "Todd",
                  :password => "12345",
                  :email => "st@barbershop.com",
                  :current_city => "London"
              }
    # create a new user for use in all tests
    user = User.create(@params)

    @title = "Well what do ya know!?"
    user.logs << Log.new( {:title => @title } )

    # give our new user to the correct template and render it
    @user = assign(:user, user)
  end

  let (:rendered) { render :template => "users/show.html.erb" }

  it "displays the user's full name" do
    expect(rendered).to match /Sweeny/
    expect(rendered).to match /Todd/
  end

  it "displays the user's current city" do
    expect(rendered).to match /London/
  end

  it "displays the user's join date" do
    expect(rendered).to match Date.today.to_s
  end

  it "displays log posts authored by the user" do
    expect(rendered).to match @title
  end

  # TEAR DOWN
  after(:all) do
    # delete the new user, so we don't clutter the test database
    @user.destroy
  end
end
