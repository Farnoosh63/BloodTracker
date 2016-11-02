class Level < ActiveRecord::Base
  validates :number, :presence => true

  def self.search_daily(search_daily)
    if search_daily
      Level.where(:date => "#{search_daily}")
    end
  end

  def self.search_month_to_date(search_month_to_date)
    if search_month_to_date
      start_date = Level.where(:date => "#{search_month_to_date}").first.date.at_beginning_of_month
      end_date = Level.where(:date => "#{search_month_to_date}").first.date
      date_range = start_date..end_date
      Level.where(:date => date_range)
    end
  end

  def self.search_monthly(search_monthly)
    if search_monthly
      start_date = Level.where(:date => "#{search_monthly}").first.date.at_beginning_of_month-1.month
      end_date = Level.where(:date => "#{search_monthly}").first.date.at_beginning_of_month-1
      Level.where(:date => start_date..end_date)
    end
  end
end
