class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :job_applications, :answer1, :text
    change_column :job_applications, :answer2, :text
    change_column :job_applications, :answer3, :text
  end
end
