class CreateKeyData < ActiveRecord::Migration
  def change
    create_table :key_data do |t|
      t.string :key

      t.timestamps null: false
    end
  end
end
