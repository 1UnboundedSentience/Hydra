class StorageAccount < ActiveRecord::Base
  belongs_to :storage_type
  has_many :value_stores
  has_many :key_data, through: :value_stores
end
