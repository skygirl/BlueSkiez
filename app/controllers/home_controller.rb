class HomeController < ApplicationController
  def index
    @promolist = Promotion.where("startdate <= ? AND enddate >= ?",  Date.today, Date.today)
  end

  def about
  end

  def contact
  end

  def announcement
  end

  def conditions
  end

  def privacy
  end

  def site_map
  end

  def support
  end

  def custlist
  end

  def search
   @results=0
  if !params[:custname].nil?
    @results=1
    @cust="%#{params[:custname]}%"
    @custlist = Customer.where("cust_lname like ?",@cust)
  end
  end
end

 

