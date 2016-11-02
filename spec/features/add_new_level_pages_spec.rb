require 'rails_helper'

describe "the add a level process" do
  it "adds a new level" do
    visit levels_path
    click_link 'Add New Entry'
    fill_in 'level_number', :with => '12'
    find('.btn').click
    expect(page).to have_content 'Glucose Levels'
  end

  it "gives error when no name is entered" do
    visit new_level_path
    find('.btn').click
    expect(page).to have_content 'errors'
  end
end
