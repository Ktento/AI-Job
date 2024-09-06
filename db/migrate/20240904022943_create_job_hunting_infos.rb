class CreateJobHuntingInfos < ActiveRecord::Migration[7.2]
  def change
    create_table :job_hunting_infos do |t|
      t.references :user, null: false, foreign_key: true
      t.string :self_pr, limit: 400
      t.string :motivation, limit: 400
      t.string :extracurricular_activities, limit: 400

      t.timestamps
    end
  end
end
