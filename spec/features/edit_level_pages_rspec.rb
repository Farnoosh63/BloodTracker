require 'rails_helper'

describe "the edit a level process" do
  it "edits a level" do
    level = Level.create(:number => '70', :date => '2016-11-02')
    visit levels_path
    first("#levelNum").click_link(level.number)
    click_on 'Destroy'
    expect(page).not_to have_content '70'
  end
end
