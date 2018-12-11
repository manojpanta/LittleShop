require 'rails_helper'

describe 'useer having an account ' do
  it 'can sign in' do
    user = User.create(username: 'manoj', password: 'manoj')

    visit root_path

    click_on 'Log In'

    expect(current_path).to eq(login_path)
    fill_in 'username', with: user.username
    fill_in 'password', with: user.password

    click_on 'Log In'

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome #{user.username}!!")
    expect(page).to have_content("Log Out")
  end

  it 'can log out from user show page' do
    user = User.create(username: 'manoj', password: 'test')

    visit user_path(user)

    click_on 'Log Out'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Log In')
    expect(page).to_not have_content('Log Out')
  end
end
