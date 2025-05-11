require 'rails_helper'

RSpec.describe 'Home features' do
  it 'displays the name of the app and links to the About page' do
    visit('/home')
    puts page.body
    expect(page).to have_content('Game Tracker')
    click_link('About')
    expect(current_path).to eql('/about')
    expect(page).to have_content('<h1>About</h1>')
  end
end
