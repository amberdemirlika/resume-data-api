require 'csv'

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
