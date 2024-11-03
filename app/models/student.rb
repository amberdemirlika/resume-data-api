class Student < ApplicationRecord
  # belongs_to :user, foreign_key: :user_email, primary_key: :email
  # has_many :experiences, dependent: :destroy
  # has_one :capstone, dependent: :destroy
  # has_many :skills, dependent: :destroy
  # has_many :educations, dependent: :destroy

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
end