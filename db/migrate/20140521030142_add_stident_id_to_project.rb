class AddStidentIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :student_id, :integer
  end
end
