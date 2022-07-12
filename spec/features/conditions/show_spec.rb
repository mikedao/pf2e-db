require 'rails_helper'

RSpec.describe 'conditions show page', type: :feature do
  it 'shows a single condition' do
    condition_1 = create(:condition)
    condition_2 = create(:condition)

    visit condition_path(condition_1)

    expect(page).to have_content(condition_1.name)
    expect(page).to have_content(condition_1.description)
    expect(page).to have_content(condition_1.source)

    expect(page).to_not have_content(condition_2.name)
    expect(page).to_not have_content(condition_2.description)
    expect(page).to_not have_content(condition_2.source)
  end
end