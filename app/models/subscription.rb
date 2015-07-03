class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :premium_plan

  scope :chronological, -> { order('start_date ASC') }

  def self.between_dates(start_date, end_date)
    self.where(:start_date => start_date..end_date).chronological
  end
end
