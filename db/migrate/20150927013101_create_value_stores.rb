class CreateValueStores < ActiveRecord::Migration
  def change
    create_table :value_stores do |t|
      t.references :storage_account, index: true, foreign_key: true
      t.references :key_datum, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
