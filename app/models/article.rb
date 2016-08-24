class Article < ApplicationRecord
  belongs_to :member
  after_show :set_view_count

  def set_view_count
    self.update_column(:view_count, self.view_count + 1)
  end
end
