class TellersController < ApplicationController
  before_action :set_teller, only: [:show, :edit, :update, :destroy]

  # GET /tellers
  # GET /tellers.json
  def index
    @tellers = Teller.all
  end

  # GET /tellers/1
  # GET /tellers/1.json
  def show
  end

  # GET /tellers/new
  def new
    @teller = Teller.new
  end

  # GET /tellers/1/edit
  def edit
  end

  # POST /tellers
  # POST /tellers.json
  def create
    @teller = Teller.new(teller_params)

    respond_to do |format|
      if @teller.save
        format.html { redirect_to @teller, notice: 'Teller was successfully created.' }
        format.json { render action: 'show', status: :created, location: @teller }
      else
        format.html { render action: 'new' }
        format.json { render json: @teller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tellers/1
  # PATCH/PUT /tellers/1.json
  def update
    respond_to do |format|
      if @teller.update(teller_params)
        format.html { redirect_to @teller, notice: 'Teller was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @teller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tellers/1
  # DELETE /tellers/1.json
  def destroy
    @teller.destroy
    respond_to do |format|
      format.html { redirect_to tellers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teller
      @teller = Teller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teller_params
      params.require(:teller).permit(:name)
    end
end
