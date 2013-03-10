class ElevatorsController < ApplicationController

  before_filter :find_floor, only: [:create, :update]

  # GET /elevators
  # GET /elevators.json
  def index
    @elevators = Elevator.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @elevators }
    end
  end

  # GET /elevators/1
  # GET /elevators/1.json
  def show
    @elevator = Elevator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @elevator }
    end
  end

  # GET /elevators/new
  # GET /elevators/new.json
  def new
    @elevator = Elevator.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @elevator }
    end
  end

  # GET /elevators/1/edit
  def edit
    @elevator = Elevator.find(params[:id])
  end

  # POST /elevators
  # POST /elevators.json
  def create
    params[:elevator][:floor] = Floor.find(params[:elevator][:floor]) if params[:elevator][:floor]
    @elevator = Elevator.new(params[:elevator])

    respond_to do |format|
      if @elevator.save
        format.html { redirect_to @elevator, notice: 'Elevator was successfully created.' }
        format.json { render json: @elevator, status: :created, location: @elevator }
      else
        format.html { render action: "new" }
        format.json { render json: @elevator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /elevators/1
  # PUT /elevators/1.json
  def update
    @elevator = Elevator.find(params[:id])

    respond_to do |format|
      if @elevator.update_attributes(params[:elevator])
        format.html { redirect_to @elevator, notice: 'Elevator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @elevator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elevators/1
  # DELETE /elevators/1.json
  def destroy
    @elevator = Elevator.find(params[:id])
    @elevator.destroy

    respond_to do |format|
      format.html { redirect_to elevators_url }
      format.json { head :no_content }
    end
  end

  private

  def find_floor
    params[:elevator][:floor] = Floor.find(params[:elevator][:floor]) if params[:elevator][:floor]
  end
end
