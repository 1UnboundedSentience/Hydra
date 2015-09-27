class CreateStorageAccounts < ActiveRecord::Migration
  def change
    create_table :storage_accounts do |t|
      t.references :storage_type, index: true, foreign_key: true
      t.string :credential_blob

      t.timestamps null: false
    end
  end
end
