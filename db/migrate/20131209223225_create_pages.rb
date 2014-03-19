class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :titulo
      t.text :description
      t.string :link
      t.text :body
      t.integer :parent_id
      t.boolean :tutorial

      t.timestamps
    end
  end
end
