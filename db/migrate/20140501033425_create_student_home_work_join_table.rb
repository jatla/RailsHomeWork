class CreateStudentHomeWorkJoinTable < ActiveRecord::Migration
  def change
    create_join_table :students, :home_works do |t|
      # t.index [:student_id, :home_work_id]
      t.index [:home_work_id, :student_id], unique: true
    end
  end
end
