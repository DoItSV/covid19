class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update]

  # GET /people/1
  # GET /people/1.json
  def show
  end

  # GET /people/new
  def new
    @person = Person.new
  end

  # GET /people/1/edit
  def edit
    @symptoms = Symptom.all
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)
    @person.department = Department.first
    @person.city = @person.department.cities.first

    respond_to do |format|
      if @person.save
        format.html { redirect_to step2_path(@person), notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to result_path(@person), notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def person_params
    params.require(:person).permit(:age, :sex, :recent_trip, :contact_with_recent_trip, :latitude, :longitude,
                                   symptoms_ids: [])
  end
end
