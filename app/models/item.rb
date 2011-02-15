class Item < ActiveRecord::Base
    belongs_to :program
    validates :obj_code, :details, :amount, :presence => true
end
