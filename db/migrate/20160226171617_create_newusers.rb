class CreateNewusers < ActiveRecord::Migration
  def change
    create_table :newusers do |t|
      t.string :sinm
      t.string :sigml
      t.string :sipd

      t.timestamps null: false
    end
  end
end
