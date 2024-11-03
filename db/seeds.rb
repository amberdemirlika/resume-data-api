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