class User < ApplicationRecord
  before_save { email.downcase}
  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false}
end
