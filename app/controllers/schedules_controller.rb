class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:edit, :show]
 
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

  def edit
  end

  def update
    schedule = Schedule.find(params[:id])
    schedule.update(schedule_params)
  end

  def show
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :text)
  end
  
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end
  
end
