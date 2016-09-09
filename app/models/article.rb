class Article < ApplicationRecord
  belongs_to :member
  belongs_to :case
  has_many :replies
  after_create :update_case_count
  # after_update :update_case_count
  def set_view_count
    self.update_column(:view_count, self.view_count + 1)
  end

  def update_case_count
    self.case.count += 1
    # self.case.count = Article.where(case_id: self.case.id).count
    self.case.save
    true
  end
end
