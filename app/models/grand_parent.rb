class GrandParent < ActiveRecord::Base
  has_many :parents
  
  def children
    self.parents.inject([]) { |c, p| p.children }
  end
end
