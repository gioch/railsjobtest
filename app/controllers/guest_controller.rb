class GuestController < ApplicationController
  def index
    render html: 'hello guest'
  end
end
