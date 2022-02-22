class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(set_power)
    @user = current_user
    @power.user_id = @user.id

    if @power.save
      redirect_to powers_path
    else
      render :new
    end
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.new(set_power)
  end

  def your_powers
    @powers = Power.where(user_id: current_user)
  end

  private

  def set_power
    params.require(:power).permit(:name, :description, :user_id)
  end
end
