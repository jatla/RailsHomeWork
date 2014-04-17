class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.text :description
      t.boolean :is_completed

      t.timestamps
    end
  end
end
