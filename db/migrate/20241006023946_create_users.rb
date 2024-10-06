class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.text :name
      t.string :email
      t.text :role

      t.timestamps
    end
  end
end
