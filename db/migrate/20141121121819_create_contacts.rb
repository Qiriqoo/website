class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :username
      t.string :phone
      t.string :email
      t.text :text

      t.timestamps
    end
  end
end
