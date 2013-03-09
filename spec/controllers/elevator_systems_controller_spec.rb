require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ElevatorSystemsController do

  # This should return the minimal set of attributes required to create a valid
  # ElevatorSystem. As you add validations to ElevatorSystem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ElevatorSystemsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all elevator_systems as @elevator_systems" do
      elevator_system = ElevatorSystem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:elevator_systems).should eq([elevator_system])
    end
  end

  describe "GET show" do
    it "assigns the requested elevator_system as @elevator_system" do
      elevator_system = ElevatorSystem.create! valid_attributes
      get :show, {:id => elevator_system.to_param}, valid_session
      assigns(:elevator_system).should eq(elevator_system)
    end
  end

  describe "GET new" do
    it "assigns a new elevator_system as @elevator_system" do
      get :new, {}, valid_session
      assigns(:elevator_system).should be_a_new(ElevatorSystem)
    end
  end

  describe "GET edit" do
    it "assigns the requested elevator_system as @elevator_system" do
      elevator_system = ElevatorSystem.create! valid_attributes
      get :edit, {:id => elevator_system.to_param}, valid_session
      assigns(:elevator_system).should eq(elevator_system)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ElevatorSystem" do
        expect {
          post :create, {:elevator_system => valid_attributes}, valid_session
        }.to change(ElevatorSystem, :count).by(1)
      end

      it "assigns a newly created elevator_system as @elevator_system" do
        post :create, {:elevator_system => valid_attributes}, valid_session
        assigns(:elevator_system).should be_a(ElevatorSystem)
        assigns(:elevator_system).should be_persisted
      end

      it "redirects to the created elevator_system" do
        post :create, {:elevator_system => valid_attributes}, valid_session
        response.should redirect_to(ElevatorSystem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved elevator_system as @elevator_system" do
        # Trigger the behavior that occurs when invalid params are submitted
        ElevatorSystem.any_instance.stub(:save).and_return(false)
        post :create, {:elevator_system => {  }}, valid_session
        assigns(:elevator_system).should be_a_new(ElevatorSystem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ElevatorSystem.any_instance.stub(:save).and_return(false)
        post :create, {:elevator_system => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested elevator_system" do
        elevator_system = ElevatorSystem.create! valid_attributes
        # Assuming there are no other elevator_systems in the database, this
        # specifies that the ElevatorSystem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ElevatorSystem.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => elevator_system.to_param, :elevator_system => { "these" => "params" }}, valid_session
      end

      it "assigns the requested elevator_system as @elevator_system" do
        elevator_system = ElevatorSystem.create! valid_attributes
        put :update, {:id => elevator_system.to_param, :elevator_system => valid_attributes}, valid_session
        assigns(:elevator_system).should eq(elevator_system)
      end

      it "redirects to the elevator_system" do
        elevator_system = ElevatorSystem.create! valid_attributes
        put :update, {:id => elevator_system.to_param, :elevator_system => valid_attributes}, valid_session
        response.should redirect_to(elevator_system)
      end
    end

    describe "with invalid params" do
      it "assigns the elevator_system as @elevator_system" do
        elevator_system = ElevatorSystem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ElevatorSystem.any_instance.stub(:save).and_return(false)
        put :update, {:id => elevator_system.to_param, :elevator_system => {  }}, valid_session
        assigns(:elevator_system).should eq(elevator_system)
      end

      it "re-renders the 'edit' template" do
        elevator_system = ElevatorSystem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ElevatorSystem.any_instance.stub(:save).and_return(false)
        put :update, {:id => elevator_system.to_param, :elevator_system => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested elevator_system" do
      elevator_system = ElevatorSystem.create! valid_attributes
      expect {
        delete :destroy, {:id => elevator_system.to_param}, valid_session
      }.to change(ElevatorSystem, :count).by(-1)
    end

    it "redirects to the elevator_systems list" do
      elevator_system = ElevatorSystem.create! valid_attributes
      delete :destroy, {:id => elevator_system.to_param}, valid_session
      response.should redirect_to(elevator_systems_url)
    end
  end

end
