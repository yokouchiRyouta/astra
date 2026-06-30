class CreateIdeas < ActiveRecord::Migration[8.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
