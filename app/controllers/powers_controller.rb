class PowersController < ApplicationController
  before_action :set_power, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @powers = policy_scope(Power.search_by_name_and_description(params[:query]))
    else
      @powers = policy_scope(Power)
    end
  end

  def show; end

  def new
    @power = Power.new
    authorize @power
  end

  def create
    @power = Power.new(power_params)
    @user = current_user
    @power.user_id = @user.id
    authorize @power

    if @power.save
      redirect_to your_powers_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @power.update(power_params)
      redirect_to your_powers_path
    else
      render :new
    end
  end

  def your_powers
    @powers = policy_scope(Power).where(user_id: current_user)
    authorize @powers
  end

  def destroy
    @power.destroy
    redirect_to your_powers_path
  end

  private

  def set_power
    @power = Power.find(params[:id])
    authorize @power
  end

  def power_params
    params.require(:power).permit(:name, :description, :user_id, :photo)
  end
end
