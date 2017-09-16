class CreateContactNumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_numbers do |t|
      t.references :contact, foreign_key: true
      t.string :label
      t.integer :number

      t.timestamps
    end
  end
end
