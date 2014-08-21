class CourserasController < ApplicationController
  before_action :set_coursera, only: [:show, :edit, :update, :destroy]

  # GET /courseras
  # GET /courseras.json
  def index
    @courseras = Coursera.all
  end

  # GET /courseras/1
  # GET /courseras/1.json
  def show
  end

  # GET /courseras/new
  def new
    @coursera = Coursera.new
  end

  # GET /courseras/1/edit
  def edit
  end

  # POST /courseras
  # POST /courseras.json
  def create
      @coursera = Coursera.new(coursera_params)
    respond_to do |format|
      if @coursera.save
        format.html { redirect_to @coursera, notice: 'Coursera was successfully created.' }
        format.json { render :show, status: :created, location: @coursera }
      else
        format.html { render :new }
        format.json { render json: @coursera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courseras/1
  # PATCH/PUT /courseras/1.json
  def update
    respond_to do |format|
      if @coursera.update(coursera_params)
        format.html { redirect_to @coursera, notice: 'Coursera was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursera }
      else
        format.html { render :edit }
        format.json { render json: @coursera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courseras/1
  # DELETE /courseras/1.json
  def destroy
    @coursera.destroy
    respond_to do |format|
      format.html { redirect_to courseras_url, notice: 'Coursera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def hax
    @courseras=Coursera.all
    @courseras.each do |coursera|
      coursera.destroy
    end
    @imports=SmarterCSV.process('experiment.csv')
    @imports.each do |import|
     Coursera.create(import)
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursera
      @coursera = Coursera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursera_params
      params.require(:coursera).permit(:cid, :name, :email)
    end
end
