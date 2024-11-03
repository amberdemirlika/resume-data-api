require 'csv'

Skill.create!([
  {
    student_id: 1, 
    skill_name: "surgery"}
])
Experience.create!([
  {
    student_id: 1, 
    start_date: "01/01/2001", 
    end_date: "01/01/2002", 
    job_title: "doctor", 
    company_name: "northshore", details: "medical student grad"}
])

file = Rails.root.join("db", "education-data.csv")

# Check if the file exists before proceeding
unless File.exist?(file)
  puts "File not found: #{file}"
  exit
end

CSV.foreach(file, headers: false) do |row|
  student_id = row[0]
  start_date = row[1]
  end_date = row[2]
  degree = row[3]
  university = row[4]
  details = row[5]

  Education.create!(
    student_id: student_id,
    start_date: start_date,
    end_date: end_date,
    degree: degree,
    university: university,
    details: details
  )
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Student.create!(
  first_name: "Test",
  last_name: "Student",
  user_email: "test@example.com",
  contact_email: "test@example.com",
  phone_number: "123-456-7890",
  short_bio: "I am a test student",
  linkedin_url: "https://www.linkedin.com/in/test-student",
  twitter_handle: "@teststudent",
  website_url: "https://www.teststudent.com",
  resume_url: "https://www.teststudent.com/resume",
  github_url: "https://github.com/teststudent",
  profile_image: "https://example.com/test-profile.jpg"
)

puts "✅ Done seeding!"

