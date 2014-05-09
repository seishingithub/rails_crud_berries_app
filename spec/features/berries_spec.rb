require 'spec_helper'

feature "Managing Berries" do
  scenario "User can create a berry" do
    visit '/'
    click_on "Add New Berry"

    fill_in 'berry[berry_type]', with: 'raspberry'
    fill_in 'berry[berry_color]', with: 'red'
    fill_in 'Berry Rating', with: 5

    click_on "Create Berry"

    expect(page).to have_content('raspberry')
    expect(page).to have_content('red')
    expect(page).to have_content(5)

  end
end