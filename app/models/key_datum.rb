class KeyDatum < ActiveRecord::Base
  has_many :value_stores
  has_many :storage_accounts, through: :value_stores
end
