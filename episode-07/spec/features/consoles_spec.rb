require 'rails_helper'

RSpec.describe 'Consoles features' do
  let(:view_consoles) do
      visit('/')
      click_link('Consoles')
  end
  
  describe 'viewing the index' do
    it 'lists all of the consoles' do
      # 1. create your test data
      Console.create!(name: 'Switch', manufacturer: 'Nintendo')
      Console.create!(name: 'Wii', manufacturer: 'Nintendo')

      # 2. interact with the app
      view_consoles

      # 3. expect something to happen
      expect(page).to have_content('Nintendo Switch')
      expect(page).to have_content('Nintendo Wii')
    end
  end

  describe 'adding a new console' do
    it 'adds the new console to the list of consoles' do
      view_consoles
      click_link('Add New Console')

      expect(current_path).to have_content('/consoles/new')

      fill_in('Name', with: 'PlayStation Vita')
      fill_in('Manufacturer', with: 'Sony')
      click_button('Create')

      expect(page).to have_content('Sony PlayStation Vita')
      expect(current_path).to have_content('/consoles')
    end
  end
end