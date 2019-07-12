class CreateTodoItem < ActiveRecord::Migration[5.2]
  def up
    create_table :todo_items do |t|
      t.string :title, null: false
      t.text :description, null: true
      t.datetime :created_at, null: false, index: true
    end
  end

  def down
    drop_table :todo_items
  end
end
