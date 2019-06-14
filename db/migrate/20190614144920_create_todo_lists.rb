class CreateTodoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
