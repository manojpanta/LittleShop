require 'rails_helper'

describe 'registered user sees log out link' do
  it 'can log out ' do
    user = User.create(username: 'manoj', password: 'test')
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit '/'

    expect(page).to have_content("Log Out")

    click_on 'Log Out'

    expect(current_path).to eq('/')
  end
end
