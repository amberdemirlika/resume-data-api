class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]
  before_action :authenticate_user, only: [:current]

  def index
    @students = Student.all
    render :index
  end

  def show
    render :show
  end

  def current
    @student = Student.find_by(user_email: current_user.email)
    if @student
      render :show
    else
      render json: { error: "No student profile found" }, status: :not_found
    end
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      render :show
    else
      render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    if @student.update(student_params)
      render :show
    else
      render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
    render json: {message: "Student Destroyed"}
  end

 

  def student_params
    params.permit(
      :first_name,
      :last_name,
      :user_email,
      :contact_email,
      :phone_number,
      :short_bio,
      :linkedin_url,
      :twitter_handle,
      :website_url,
      :resume_url,
      :github_url,
      :profile_image
    )
  end

 private 
 
  def set_student
    @student = Student.find(params[:id])
  end
end
