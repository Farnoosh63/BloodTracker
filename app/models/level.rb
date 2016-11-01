class Level < ActiveRecord::Base
  validates :number, :presence => true

  def self.search(search)
    if search
      Level.where(:date => "#{search}")
    else
      all
    end
  end
end
