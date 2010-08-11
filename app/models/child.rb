class Child < ActiveRecord::Base
  belongs_to :parent
  
  def grand_parent
    self.parent.grand_parent
  end
end
