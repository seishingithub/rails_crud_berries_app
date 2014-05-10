require 'spec_helper'

feature 'Managing Berries' do
  scenario 'User can create a berry' do
    visit '/'
    click_on 'Add New Berry'

    fill_in 'berry[berry_type]', with: 'raspberry'
    fill_in 'berry[berry_color]', with: 'red'
    fill_in 'Berry Rating', with: 5

    click_on 'Create Berry'

    expect(page).to have_content('raspberry')
    expect(page).to have_content('red')
    expect(page).to have_content(5)

    click_on 'raspberry'
    expect(page).to have_content('raspberry')
    expect(page).to have_content('red')
    expect(page).to have_content(5)

    click_on 'Edit'
    fill_in 'berry[berry_type]', with: 'blueberry'
    fill_in 'berry[berry_color]', with: 'blue'
    fill_in 'Berry Rating', with: 4
    click_on 'Update'

    expect(page).to have_no_content('raspberry')
    expect(page).to have_no_content('red')
    expect(page).to have_no_content(5)

    expect(page).to have_content('blueberry')
    expect(page).to have_content('blue')
    expect(page).to have_content(4)

    click_on 'Delete'
    expect(page).to have_no_content('blueberry')
    expect(page).to have_no_content('blue')
    expect(page).to have_no_content(4)

  end
end