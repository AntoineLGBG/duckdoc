class DuckmonsController < ApplicationController
  before_action :set_duckmon, only: %i[ show edit update destroy ]

  # GET /duckmons or /duckmons.json
  def index
    @duckmons = Duckmon.all
  end

  # GET /duckmons/1 or /duckmons/1.json
  def show
  end

  # GET /duckmons/new
  def new
    @duckmon = Duckmon.new
  end

  # GET /duckmons/1/edit
  def edit
  end

  # POST /duckmons or /duckmons.json
  def create
    @duckmon = Duckmon.new(duckmon_params)

    respond_to do |format|
      if @duckmon.save
        format.html { redirect_to duckmon_url(@duckmon), notice: "Duckmon was successfully created." }
        format.json { render :show, status: :created, location: @duckmon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @duckmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duckmons/1 or /duckmons/1.json
  def update
    respond_to do |format|
      if @duckmon.update(duckmon_params)
        format.html { redirect_to duckmon_url(@duckmon), notice: "Duckmon was successfully updated." }
        format.json { render :show, status: :ok, location: @duckmon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @duckmon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duckmons/1 or /duckmons/1.json
  def destroy
    @duckmon.destroy!

    respond_to do |format|
      format.html { redirect_to duckmons_url, notice: "Duckmon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duckmon
      @duckmon = Duckmon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def duckmon_params
      params.require(:duckmon).permit(:image, :health_point, :name, :damages, :description, :attack_name, :attack_description)
    end
end
