class Member < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :set_default_alias
  # after_create :save_alias

  def set_default_alias
    if self.alias.blank?
      self.alias = self.email.split('@')[0]
      self.save
    end
  end

  # def save_alias
  #   puts self.alias
  #   # self.alias = params[:alias]
  #   self.save
  # end
end
