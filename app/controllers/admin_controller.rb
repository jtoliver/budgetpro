class AdminController < ApplicationController
  require 'csv'
  before_filter :check_if_admin
  
  def index
    @items = Item.includes(:program).all
  end
  
  def export_to_csv
    @items = Item.includes(:program).all
    
    csv_string = CSV.generate do |csv|
      #header
      csv << ["Department", "Fund", "Program", "Priority", "Program Status", "Purpose", "Desc", "link", "code", "details", "amount", "updated"]
    
      #rows
      @items.each do |item|
      csv << [item.program.dept, item.program.fund, item.program.program, item.program.priority, item.program.prog_status, item.program.purpose, item.program.desc, item.program.link, item.obj_code, item.details, item.amount, item.updated_at]
      end   
    end
  
    #browser
    send_data csv_string,
      :type => 'text/csv; charset=iso-8859-1; header=present',
      :disposition => "attachment; filename=users.csv"  
  end

end
