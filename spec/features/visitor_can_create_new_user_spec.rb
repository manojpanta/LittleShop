require 'rails_helper'

describe 'visitor visiting home page' do
  it 'can create new user' do
    username = 'manoj'
    password = 'test'

    visit '/'

    click_on 'Register'

    expect(current_path).to eq(new_user_path)
  end
end
