class User < ApplicationRecord
  has_secure_password

  enum role: [ :basic, :doctor, :admin ]

  validates_presence_of :name, :email, :role, :password_digest
  validates_uniqueness_of :email
end
