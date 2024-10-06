class CreateTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.text :tech_stack

      t.timestamps
    end
  end
end
