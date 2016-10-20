class InstructorsController < ApplicationController
  def new
    @metro = Metro.find(params[:metro_id])
    @instructor = Instructor.new
  end

  def create
    @metro = Metro.find(params[:metro_id])
    @instructor = @metro.instructors.create!(instructor_params)
    redirect_to @metro
  end

  def show
    @instructor = Instructor.find(params[:id])
    @metro = @instructor.metro
  end

  def edit
    @instructor = Instructor.find(params[:id])
    @metro = @instructor.metro
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update(instructor_params)
      flash[:notice] = "#{@instructor.name} was successfully updated."
      redirect_to @instructor
    else
      render :edit
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to @instructor.house
  end

  private
  def instructor_params
    params.require(:instructor).permit(:name)
  end
end
