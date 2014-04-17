class CreateHomeWorks < ActiveRecord::Migration
  def change
    create_table :home_works do |t|
      t.string :week
      t.string :difficulty_level
      t.text :description

      t.timestamps
    end
  end
end
