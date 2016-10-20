class ObservationsController < ApplicationController

  def new
    @instructor = Instructor.find(params[:instructor_id])
    @observation = Observation.new
  end

  def create
    @instructor = Instructor.find(params[:instructor_id])
    @observation = @instructor.observations.create!(observation_params)
    redirect_to @instructor
  end

  def edit
    @observation = Observation.find(params[:id])
    @instructor = @observation.instructor
  end

  def update
    @instructor = Instructor.find(params[:instructor_id])
    @observation = Observation.find(params[:id])
    if @observation.update(observation_params)
      flash[:notice] = "Observation was successfully updated."
      redirect_to @instructor
    else
      render :edit
    end
  end

  def destroy
    @observation = Observation.find(params[:id])
    @observation.destroy
    redirect_to @observation.instructor
  end

  private
  def observation_params
    params.require(:observation).permit(:instance, :obs_date, :created_by, :obs_notes, :prep, :framing, :inst, :cfu, :active, :obs_edit)
  end
end
