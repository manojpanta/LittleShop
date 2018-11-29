require 'rails_helper'

describe 'visitor visiting home page' do
  it 'can create new user' do
    username = 'manoj'
    password = 'test'

    visit '/'

    click_on 'Register'

    expect(current_path).to eq(new_user_path)

    fill_in :user_username, with: username
    fill_in :user_password, with: password

    click_on 'Create User'

    expect(page).to have_content("Welcome #{username}!!")
  end
end
