class PremiumPlan < ActiveRecord::Base
  has_many :subscriptions
  self.inheritance_column = :title

  @@additional_fee = 0

  ## method shared by every subclass
  def monthly_charge
    self.price_per_month - ( self.price_per_month * @@additional_fee / 100 )
  end

  ## get subscriptions of current premium plane in give date range
  def self.subscriptions_between(start_date, end_date)
    self.first.subscriptions.between_dates(start_date, end_date)
  end

  ## calculate total revenue for given plan in given date range
  def self.revenue_between(start_date, end_date)
    subs = self.subscriptions_between(start_date, end_date)
    subs.map{|sbs| sbs.premium_plan.monthly_charge }.inject(:+) unless subs.nil?
  end
end
