class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :descripution
      t.integer :priority
      t.integer :status

      t.timestamps null: false
    end
  end
end
