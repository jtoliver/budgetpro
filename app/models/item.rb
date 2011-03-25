class Item < ActiveRecord::Base
    belongs_to :program
    validates_presence_of :program_id
    validates :obj_code, :details, :amount, :presence => true
end
