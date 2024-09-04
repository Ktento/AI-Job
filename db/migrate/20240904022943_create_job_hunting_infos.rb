class CreateJobHuntingInfos < ActiveRecord::Migration[7.2]
  def change
    create_table :job_hunting_infos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :self_pr
      t.string :motivation
      t.string :extracurricular_activities

      t.timestamps
    end
  end
end
