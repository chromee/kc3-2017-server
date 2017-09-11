class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :rare_type
      t.string :img_path

      t.timestamps
    end
  end
end
