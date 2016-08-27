class Case < ApplicationRecord
  belongs_to :member
  has_many :article

end
