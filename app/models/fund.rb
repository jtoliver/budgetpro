class Fund < ActiveRecord::Base
  
  def fund_with_desc
    "#{account} - #{program}"
  end
  
end
