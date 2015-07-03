class PremiumPlan < ActiveRecord::Base
  has_many :subscriptions
  self.inheritance_column = :title

  @@additional_fee_percent = 0

  def monthly_charge
    self.price_per_month + @@additional_fee_percent
  end
end
