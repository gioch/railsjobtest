class PremiumPlan < ActiveRecord::Base
  has_many :subscriptions
end
