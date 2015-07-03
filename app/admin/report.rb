ActiveAdmin.register_page "Report" do

  content title: "Reports" do

    ## made calculation only for past 4 weeks, 
    ## but functionality is ready to get by any given time range

    current_date = Date.today.strftime("%Y-%m-%d")
    weeks_ago = 4.weeks.ago.strftime("%Y-%m-%d")

    apple_revenue = Apple.revenue_between(weeks_ago, current_date)
    stripe_revenue = Stripe.revenue_between(weeks_ago, current_date)

    total_revenue = 0
    total_revenue += apple_revenue if !apple_revenue.nil?
    total_revenue += stripe_revenue if !stripe_revenue.nil?

    render partial: 'report', locals: { 
      current_date: current_date, 
      weeks_ago: weeks_ago, 
      apple_revenue: apple_revenue, 
      stripe_revenue: stripe_revenue, 
      total_revenue: total_revenue,
    }
  end # content

end
