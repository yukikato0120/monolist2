class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships

  has_many :wants, class_name: "Want", foreign_key: "item_id", dependent: :destroy
  has_many :want_users , through: :wants, source: :user

  has_many :haves, class_name: "Have", foreign_key: "item_id", dependent: :destroy
  has_many :have_users , through: :haves, source: :user

#　初期にあったコマンド
#  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
#  has_many :users , through: :ownerships
#  has_many :wants , foreign_key: "item_id"
#  has_many :want_users , source: :users
#  has_many :have_users , foreign_key: "item_id"
#  has_many :have_users , source: :users

end
