class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :lastName
      t.text :biography
      t.text :interest

      t.timestamps
    end

    add_attachment :members, :image
  end
end
