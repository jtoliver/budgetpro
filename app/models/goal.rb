class Goal < ActiveRecord::Base
  def goal_num
    "#{goal}"
  end
end
