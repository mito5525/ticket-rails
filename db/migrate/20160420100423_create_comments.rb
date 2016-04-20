class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :ticket

      t.timestamps null: false

      t.foreign_key :tickets, column: 'ticket_id'
    end
  end
end
