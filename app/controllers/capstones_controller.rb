class CapstonesController < ApplicationController

    def index
      @capstones = Capstone.where(user_id: current_user.id)
  
      render :index
  
    end
  
    def show
      @capstone = Capstone.find_by(id: params[current_user.id])
      # if @capstone.user_id == current_user.id
  
      render :show
  
    end
  
  
    def create
      @capstone = Capstone.new(
        student_id: params[:student_id],
        name: params[:name],
        description: params[:description],
        capstone_url: params[:capstone_url],
        capstone_image: params[:capstone_image],

      )
  
  
      if @capstone.save!
        render :show
      else
  
        render json: { errors: @capstone.errors.full_messages}, 
        status: :unprocessable_entity
      end
  
    end
  
    def update
  
      @capstone = Capstone.find_by(id: params[:id])
  
      @capstone.update(
        student_id: params[:student_id] || @capstone.student_id,
        name: params[:name] || @capstone.name,
        description: params[:description] || @capstone.description,
        capstone_url: params[:capstone_url] || @capstone.capstone_url,
        capstone_image: params[:capstone_image] || @capstone.capstone_image,
      
      )
      @capstone.save!
  
      render :show
  
    end
  
    def destroy
      @capstone = Capstone.find_by(id: params[:id])
      @capstone.destroy
      render json: { message: "Capstone has been removed" }
  
    end

  


end