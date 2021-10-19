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

  private
  def schedule_params
    params.require(:schedule).permit(:title, :text)
  end
  
end
