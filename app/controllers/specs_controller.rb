class SpecsController < ApplicationController
  before_action :set_gun

  def new
    @spec = @gun.build_spec
  end

  def create
    @spec = @gun.build_spec(spec_params)
    if @spec.save
      redirect_to gun_path(@gun)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @gun.spec.update(spec_params)
      redirect_to gun_path(@gun)
    else
      render :edit
    end
  end

  private
  def set_gun
    @gun = Gun.find(params[:gun_id])
  end

  def spec_params
    params
      .require(:spec)
      .permit(
        :barrel_length, :barrel_type, :rate_of_twist, :overall_length, :weight,
        :receiver_finish, :rear_sight, :front_sight, :scopeability, :scope_mount_type,
        :stock_material, :buttplate_pad, :length_of_pull, :safety, :best_uses, :notes,
        :capacity)
  end
end
