class ValueStore < ActiveRecord::Base
  belongs_to :storage_account
  belongs_to :key_datum
end
