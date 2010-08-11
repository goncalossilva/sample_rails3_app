class Parent < ActiveRecord::Base
  belongs_to :grand_parent
  has_many :children
end
