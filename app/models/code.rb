class Code < ActiveRecord::Base
  def code_with_desc
    "#{objcode} - #{description}"
  end
  
  def code_without_desc
    "#{objcode}"
  end
end
