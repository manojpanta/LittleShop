require 'rails_helper'

describe 'as a visitor i see navigation bar' do
  it 'has link to return to home page' do
    visit '/'

    expect(page).to have_link('Home')
    expect(page).to have_content('Welcome To LittleShop!!')
  end

  it 'has link to brows all the items' do
    item1 = Item.create(name: 'cake', price: '10', image: 'https://assets.marthastewart.com/styles/wmax-750/d65/triple-ice-cream-cake-chocolate-martha-bakes-se10-4831-v2-d113213/triple-ice-cream-cake-chocolate-martha-bakes-se10-4831-v2-d113213_horiz.jpg?itok=WfWo8Awj')
    item2 = Item.create(name: 'cake1', price: '11', image: 'https://assets.marthastewart.com/styles/wmax-750/d65/triple-ice-cream-cake-chocolate-martha-bakes-se10-4831-v2-d113213/triple-ice-cream-cake-chocolate-martha-bakes-se10-4831-v2-d113213_horiz.jpg?itok=WfWo8Awj')
    visit '/'

    click_on 'Items'

    expect(page).to have_content(item1.name)
    expect(page).to have_content(item2.name)
  end

  it 'has link to brows all the merchants' do
    merchant1 = Merchant.create(name: 'walmart')
    merchant2 = Merchant.create(name: 'kingsoopers')
    visit '/'

    click_on 'Merchants'

    expect(page).to have_content(merchant1.name)
    expect(page).to have_content(merchant2.name)
  end

  it 'has link to log in and registr' do
    visit '/'

    expect(page).to have_link('Log In')
    expect(page).to have_link('Register')
  end
end
