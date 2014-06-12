class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :email
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.timestamps
    end
  end
end
