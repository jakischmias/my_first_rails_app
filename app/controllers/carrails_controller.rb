class CarrailsController < ApplicationController
  before_action :set_carrail, only: [:show, :edit, :update, :destroy]

  # GET /carrails
  # GET /carrails.json
  def index
    @carrails = Carrail.all
  end

  # GET /carrails/1
  # GET /carrails/1.json
  def show
  end

  # GET /carrails/new
  def new
    @carrail = Carrail.new
  end

  # GET /carrails/1/edit
  def edit
  end

  # POST /carrails
  # POST /carrails.json
  def create
    @carrail = Carrail.new(carrail_params)

    respond_to do |format|
      if @carrail.save
        format.html { redirect_to @carrail, notice: 'Carrail was successfully created.' }
        format.json { render :show, status: :created, location: @carrail }
      else
        format.html { render :new }
        format.json { render json: @carrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrails/1
  # PATCH/PUT /carrails/1.json
  def update
    respond_to do |format|
      if @carrail.update(carrail_params)
        format.html { redirect_to @carrail, notice: 'Carrail was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrail }
      else
        format.html { render :edit }
        format.json { render json: @carrail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrails/1
  # DELETE /carrails/1.json
  def destroy
    @carrail.destroy
    respond_to do |format|
      format.html { redirect_to carrails_url, notice: 'Carrail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrail
      @carrail = Carrail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrail_params
      params.require(:carrail).permit(:generate, :scaffold, :car, :make, :model, :year)
    end
end
