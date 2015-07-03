class GuestController < ApplicationController
  def index
    render html: 'hello guest. this is place for non admin users. go to "/admin" if you are admin :P'
  end
end
