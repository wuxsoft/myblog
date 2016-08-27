class Reply < ApplicationRecord
  belongs_to :parent, foreign_key: :parent_id, class_name: 'Reply'
  belongs_to :member
  belongs_to :article
end
