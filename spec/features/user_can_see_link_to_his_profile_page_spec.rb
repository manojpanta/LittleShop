require 'rails_helper'

describe 'as a registered user  i see navigation bar' do
  it 'has link to return to my profile page' do

    visit '/'

    expect(page).to have_link('Home')
    click_on 'Home'

    # expect(current_path).to eq('/profile')
  end
end

# User Story 3
# User Navigation
#
# As a registered user
# I see the same links as a visitor
# Plus the following links
# - a link to my profile page ("/profile")
# - a link to see my orders ("/profile/orders")
# - a link to log out ("/logout")
# Minus the following links
# - I do not see a link to log in or register
# I also see text that says "Logged in as Ian Douglas" (or whatever my name is)
