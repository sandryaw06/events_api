class ResponsablesController < ApplicationController

  # GET /responsables
  def index
    @responsables = Responsable.all

    render json: @responsables
  end


  # POST /responsables
  def create

    @responsable = Responsable.new(responsable_params)

    if @responsable.save
      render json: @responsable, status: :created, location: @responsable
    else
      render json: @responsable.errors, status: :unprocessable_entity
    end
  end



  private


  def responsable_params
    params.require(:responsable).permit(:name, :last_name)
  end


end
