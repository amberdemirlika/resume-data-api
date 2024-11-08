class Student < ApplicationRecord
  # has_many :experiences
  # has_one :capstone
  # has_many :skills
  # has_many :educations

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :user_email, presence: true, uniqueness: true
  # validates :contact_email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :phone_number, presence: true
  # validates :short_bio, presence: true
  # validates :linkedin_url, format: { with: URI::regexp }, allow_blank: true
  # validates :website_url, format: { with: URI::regexp }, allow_blank: true
  # validates :resume_url, format: { with: URI::regexp }, allow_blank: true
  # validates :github_url, format: { with: URI::regexp }, allow_blank: true
  after_create :create_user_account

  private

  def create_user_account
    
    User.create!(
      email: user_email,
      name: "#{first_name} #{last_name}",
      password: "password",
    )
  end

  after_create :create_user_account

  private

  def create_user_account
    
    User.create!(
      email: user_email,
      name: "#{first_name} #{last_name}",
      password: "password",
    )
  end
end