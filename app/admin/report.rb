ActiveAdmin.register_page "Report" do

  content title: "Reports" do

    current_date = Date.today.strftime("%Y-%m-%d")
    week_ago = 7.days.ago.strftime("%Y-%m-%d")

    apple_revenue_week_ago = Apple.revenue_between(week_ago, current_date)
    stripe_revenue_week_ago = Stripe.revenue_between(week_ago, current_date)

    total_revenue_week_ago = 0
    total_revenue_week_ago += apple_revenue_week_ago if !apple_revenue_week_ago.nil?
    total_revenue_week_ago += stripe_revenue_week_ago if !stripe_revenue_week_ago.nil?

    four_week_ago = 4.weeks.ago.strftime("%Y-%m-%d")

    apple_revenue_four_week_ago = Apple.revenue_between(four_week_ago, current_date)
    stripe_revenue_four_week_ago = Stripe.revenue_between(four_week_ago, current_date)


    render partial: 'report', locals: { 
      date: week_ago, 
      apple_revenue_week_ago: apple_revenue_week_ago, 
      stripe_revenue_week_ago: stripe_revenue_week_ago, 
      total_revenue_week_ago: total_revenue_week_ago,
    }
  end # content

end
