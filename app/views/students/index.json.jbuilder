json.array! @students do |student|
  json.id student.id
  json.first_name student.first_name
  json.last_name student.last_name
  json.user_email student.user_email
  json.contact_email student.contact_email
  json.phone_number student.phone_number
  json.short_bio student.short_bio
  json.linkedin_url student.linkedin_url
  json.twitter_handle student.twitter_handle
  json.website_url student.website_url
  json.resume_url student.resume_url
  json.github_url student.github_url
  json.profile_image student.profile_image
  json.created_at student.created_at
  json.updated_at student.updated_at
end