class SchedulesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_schedule, only: [:update, :destroy, :edit]
  before_action :move_to_index, except: [:index]
 
  def index
    @schedules = Schedule.includes(:user).order("created_at DESC")
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

  private
  def schedule_params
    params.require(:schedule).permit(:title, :text, :memo).merge(user_id: current_user.id)
  end
  
  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end 
  end
end
