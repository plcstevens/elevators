class ElevatorSystemsController < ApplicationController
  # GET /elevator_systems
  # GET /elevator_systems.json
  def index
    @elevator_systems = ElevatorSystem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @elevator_systems }
    end
  end

  # GET /elevator_systems/1
  # GET /elevator_systems/1.json
  def show
    @elevator_system = ElevatorSystem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @elevator_system }
    end
  end

  # GET /elevator_systems/new
  # GET /elevator_systems/new.json
  def new
    @elevator_system = ElevatorSystem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @elevator_system }
    end
  end

  # GET /elevator_systems/1/edit
  def edit
    @elevator_system = ElevatorSystem.find(params[:id])
  end

  # POST /elevator_systems
  # POST /elevator_systems.json
  def create
    @elevator_system = ElevatorSystem.new(params[:elevator_system])

    respond_to do |format|
      if @elevator_system.save
        format.html { redirect_to @elevator_system, notice: 'Elevator system was successfully created.' }
        format.json { render json: @elevator_system, status: :created, location: @elevator_system }
      else
        format.html { render action: "new" }
        format.json { render json: @elevator_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /elevator_systems/1
  # PUT /elevator_systems/1.json
  def update
    @elevator_system = ElevatorSystem.find(params[:id])

    respond_to do |format|
      if @elevator_system.update_attributes(params[:elevator_system])
        format.html { redirect_to @elevator_system, notice: 'Elevator system was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @elevator_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elevator_systems/1
  # DELETE /elevator_systems/1.json
  def destroy
    @elevator_system = ElevatorSystem.find(params[:id])
    @elevator_system.destroy

    respond_to do |format|
      format.html { redirect_to elevator_systems_url }
      format.json { head :no_content }
    end
  end
end
