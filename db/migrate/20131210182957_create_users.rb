class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastName
      t.text :biography
      t.text :interests
      t.boolean :developer
      t.boolean :designer

      t.timestamps
    end
    add_attachment :users, :image
  end
end
