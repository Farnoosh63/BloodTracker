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

  it "no more than 4 entries per day" do
    level1 = Level.create(:number => '70', :date => '2016-11-02')
    level2 = Level.create(:number => '71', :date => '2016-11-02')
    level3 = Level.create(:number => '72', :date => '2016-11-02')
    level4 = Level.create(:number => '73', :date => '2016-11-02')
    visit levels_path
    expect(page).not_to have_content 'Add New Entry'
    expect(page).to have_content 'No more entries possible'
  end
end
