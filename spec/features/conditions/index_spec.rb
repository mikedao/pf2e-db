require 'rails_helper'

RSpec.describe 'conditions index page', type: :feature do
  it 'shows all of the conditions' do
    condition_1 = create(:condition)
    condition_2 = create(:condition)
    condition_3 = create(:condition)

    visit conditions_path

    expect(page).to have_content(condition_1.name)
    expect(page).to have_content(condition_1.description)
    expect(page).to have_content(condition_1.source)

    expect(page).to have_content(condition_2.name)
    expect(page).to have_content(condition_2.description)
    expect(page).to have_content(condition_2.source)

    expect(page).to have_content(condition_3.name)
    expect(page).to have_content(condition_3.description)
    expect(page).to have_content(condition_3.source)
  end
end