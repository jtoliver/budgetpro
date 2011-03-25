class AdminController < ApplicationController
  
  before_filter :check_if_admin
  
  def index
    @items = Item.includes(:program).all
  end

end
