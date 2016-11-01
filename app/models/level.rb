class Level < ActiveRecord::Base
  validates :number, :presence => true

  def self.search_daily(search_daily)
    if search_daily
      Level.where(:date => "#{search_daily}")
    else
      all
    end
  end

  def self.search_month_to_date(search_month_to_date)
    if search_month_to_date
      start_date = Level.where(:date => "#{search_month_to_date}").first.date.at_beginning_of_month
      end_date = Level.where(:date => "#{search_month_to_date}").first.date
      date_range = start_date..end_date
      Level.where(:date => start_date..end_date)
    else
      all
    end
  end

  def self.search_monthly(search_monthly)
    if search_monthly
      Level.where(:date => "#{search_monthly}")
    else
      all
    end
  end
end
