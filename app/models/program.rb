class Program < ActiveRecord::Base
  belongs_to :user
  has_many :items, :dependent => :destroy
end
