class ElevatorSystemsController < ApplicationController

  # GET /elevator_systems/1
  # GET /elevator_systems/1.json
  def show
    @elevator_system = ElevatorSystem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @elevator_system }
    end
  end

end
