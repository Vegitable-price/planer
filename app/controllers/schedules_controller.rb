class SchedulesController < ApplicationController
 
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    Schedule.create(schedule_params)
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :text)
  end
  
end
