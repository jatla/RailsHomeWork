class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.string :week
      t.text :description
      t.integer :difficulty_level

      t.timestamps
    end
  end
end
