class SeederController < ApplicationController
  def index
    apple  = PremiumPlan.create(title: 'Apple', price_per_month: 4.20, active: true)
    stripe = PremiumPlan.create(title: 'Stripe', price_per_month: 5.99, active: true)

    (1..10).each do |num|
      User.create(email: 'test' << num.to_s  << '@mail.com', password: 'qwerasdf', is_admin: false)
    end

    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-05-16', end_date: '2015-07-16', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-02-10', end_date: '2015-04-10', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2014-01-10', end_date: '2014-10-10', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-05-10', end_date: '2015-09-10', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-03-02', end_date: '2015-04-02', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-02-01', end_date: '2015-04-01', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-06-10', end_date: '2015-07-10', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-03-11', end_date: '2015-09-11', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-05-05', end_date: '2015-07-05', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-06-11', end_date: '2015-08-11', user_id: User.all.sample.id)
    Subscription.create(premium_plan_id: PremiumPlan.all.sample.id, start_date: '2015-05-12', end_date: '2015-09-12', user_id: User.all.sample.id)

    render html: 'Done'
  end
end
