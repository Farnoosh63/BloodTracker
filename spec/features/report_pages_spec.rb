require 'rails_helper'

describe "report process" do
  it "daily reports" do
    level1 = Level.create(:number => '70', :date => '2016-11-01')
    level2 = Level.create(:number => '71', :date => '2016-11-01')
    level3 = Level.create(:number => '33', :date => '2016-11-01')
    level4 = Level.create(:number => '32', :date => '2016-11-01')
    level5 = Level.create(:number => '70', :date => '2016-11-02')
    level6 = Level.create(:number => '71', :date => '2016-11-02')
    level7 = Level.create(:number => '72', :date => '2016-11-02')
    level8 = Level.create(:number => '73', :date => '2016-11-02')
    visit levels_path
    report = Level.search_daily('2016-11-02')
    expect(report.count).to eq 4
  end

  it "month to date reports" do
    level1 = Level.create(:number => '70', :date => '2016-10-18')
    level2 = Level.create(:number => '71', :date => '2016-10-18')
    level3 = Level.create(:number => '72', :date => '2016-10-18')
    level4 = Level.create(:number => '73', :date => '2016-10-18')
    level5 = Level.create(:number => '70', :date => '2016-11-01')
    level6 = Level.create(:number => '71', :date => '2016-11-01')
    level7 = Level.create(:number => '72', :date => '2016-11-01')
    level8 = Level.create(:number => '73', :date => '2016-11-01')
    level9 = Level.create(:number => '70', :date => '2016-11-02')
    level10 = Level.create(:number => '121', :date => '2016-11-02')
    level11 = Level.create(:number => '72', :date => '2016-11-02')
    level12 = Level.create(:number => '73', :date => '2016-11-02')
    visit levels_path
    report = Level.search_month_to_date('2016-11-02')
    expect(report.count).to eq 8
  end

  it "monthly reports" do
    level1 = Level.create(:number => '70', :date => '2016-10-01')
    level2 = Level.create(:number => '71', :date => '2016-10-01')
    level3 = Level.create(:number => '72', :date => '2016-10-01')
    level4 = Level.create(:number => '73', :date => '2016-10-01')
    level5 = Level.create(:number => '70', :date => '2016-10-18')
    level6 = Level.create(:number => '71', :date => '2016-10-18')
    level7 = Level.create(:number => '72', :date => '2016-10-18')
    level8 = Level.create(:number => '73', :date => '2016-10-18')
    level9 = Level.create(:number => '12', :date => '2016-11-02')
    level10 = Level.create(:number => '13', :date => '2016-11-02')
    level11 = Level.create(:number => '14', :date => '2016-11-02')
    level12 = Level.create(:number => '15', :date => '2016-11-02')
    visit levels_path
    report = Level.search_monthly('2016-11-02')
    expect(report.count).to eq 8
  end
end
