class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :items, :dependent => :destroy

  attr_accessible :email, :password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
