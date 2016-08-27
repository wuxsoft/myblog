class Article < ApplicationRecord
  belongs_to :member
  belongs_to :case
  
  def set_view_count
    self.update_column(:view_count, self.view_count + 1)
  end
end
