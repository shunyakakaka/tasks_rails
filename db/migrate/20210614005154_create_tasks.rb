class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
