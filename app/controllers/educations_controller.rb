class EducationsController < ApplicationController
  def index
    @educations = Education.all

    render :index

  end

  def show
    @education = Education.find_by(id: params[:id])

    render :show

  end


  def create
    @education = Education.new(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university: params[:university],
      details: params[:details]
    )


    if @education.save!
      render :show
    else

      render json: { errors: @education.errors.full_messages}, 
      status: :unprocessable_entity
    end

  end

  def update

    @education = Education.find_by(id: params[:id])

    @education.update(
      student_id: params[:student_id] || @education.student_id,
      start_date: params[:start_date] || @education.start_date,
      end_date: params[:end_date] || @education.end_date,
      degree: params[:degree] || @education.degree,
      university: params[:university] || @education.university,
      details: params[:details] || @education.details,
    )
    @education.save!

    render :show

  end

  def destroy
    @education = Education.find_by(id: params[:id])
    @education.destroy
    render json: { message: "education has been removed" }

  end
end
