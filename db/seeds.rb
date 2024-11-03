require 'csv'

# file = Rails.root.join("db", "education-data.csv")


# unless File.exist?(file)
#   puts "File not found: #{file}"
#   exit
# end

# CSV.foreach(file, headers: false) do |row|
#   student_id = row[0]
#   start_date = row[1]
#   end_date = row[2]
#   degree = row[3]
#   university = row[4]
#   details = row[5]

#   Education.create!(
#     student_id: student_id,
#     start_date: start_date,
#     end_date: end_date,
#     degree: degree,
#     university: university,
#     details: details
#   )
# end

# Student.create!(
#   first_name: "Test",
#   last_name: "Student",
#   user_email: "test@example.com",
#   contact_email: "test@example.com",
#   phone_number: "123-456-7890",
#   short_bio: "I am a test student",
#   linkedin_url: "https://www.linkedin.com/in/test-student",
#   twitter_handle: "@teststudent",
#   website_url: "https://www.teststudent.com",
#   resume_url: "https://www.teststudent.com/resume",
#   github_url: "https://github.com/teststudent",
#   profile_image: "https://example.com/test-profile.jpg"
# )

# puts "✅ Done seeding!"


file = Rails.root.join("db", "capstone-data.csv")


unless File.exist?(file)
  puts "File not found: #{file}"
  exit
end

CSV.foreach(file, headers: false) do |row|
  student_id = row[0]
  name = row[1]
  description = row[2]
  capstone_url = row[3]
  capstone_image = row[4]


  Capstone.create!(
    student_id: student_id,
    name: name,
    description: description,
    capstone_url: capstone_url,
    capstone_image: capstone_image,
  )
end


