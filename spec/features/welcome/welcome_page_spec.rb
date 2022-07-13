require 'rails_helper'

RSpec.describe 'homepage', type: :feature do
  context 'a visitor visits the home page' do
    it 'has a link to the conditions index' do
      visit root_path

      click_link "Conditions"

      expect(current_path).to eq(conditions_path)
    end
  end
end