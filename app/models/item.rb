class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  has_many :wants , foreign_key: "item_id"
  has_many :want_users , source: :users
  has_many :have_users , foreign_key: "item_id"
  has_many :have_users , source: :users
end
