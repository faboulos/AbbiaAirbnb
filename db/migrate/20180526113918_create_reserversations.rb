class CreateReserversations < ActiveRecord::Migration
  def change
    create_table :reserversations do |t|
      t.references :user, index: true
      t.references :room, index: true
      t.datetime :start_date
      t.datetime :end_date
      t.integer :price
      t.integer :total

      t.timestamps
    end
  end
end
