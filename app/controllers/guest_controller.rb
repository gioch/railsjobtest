class GuestController < ApplicationController
  def index
    # render json: User.find(2).subscriptions.first.premium_plan
    render html: 'hello guest. this is place for non admin users. go to "/admin" if you are admin :P'
  end
end
