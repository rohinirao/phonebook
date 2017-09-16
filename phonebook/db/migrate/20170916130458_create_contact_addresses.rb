class CreateContactAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_addresses do |t|
      t.references :contact, foreign_key: true
      t.string :label
      t.text :address

      t.timestamps
    end
  end
end
