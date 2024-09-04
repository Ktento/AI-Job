json.extract! job_hunting_info, :id, :user_id, :self_pr, :motivation, :extracurricular_activities, :created_at, :updated_at
json.url job_hunting_info_url(job_hunting_info, format: :json)
