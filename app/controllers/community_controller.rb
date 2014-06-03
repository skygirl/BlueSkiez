class CommunityController < ApplicationController
  def index
    @customerlist = Customer.all
  end

end
