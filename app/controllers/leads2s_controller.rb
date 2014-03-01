class Leads2sController < ApplicationController
  before_action :set_leads2, only: [:show, :edit, :update, :destroy]

  # GET /leads2s
  # GET /leads2s.json
  def index
    @leads2s = Leads2.all
  end

  # GET /leads2s/1
  # GET /leads2s/1.json
  def show
  end

  # GET /leads2s/new
  def new
    @leads2 = Leads2.new
  end

  # GET /leads2s/1/edit
  def edit
  end

  # POST /leads2s
  # POST /leads2s.json
  def create
    @leads2 = Leads2.new(leads2_params)

    respond_to do |format|
      if @leads2.save
        format.html { redirect_to @leads2, notice: 'Leads2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @leads2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @leads2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leads2s/1
  # PATCH/PUT /leads2s/1.json
  def update
    respond_to do |format|
      if @leads2.update(leads2_params)
        format.html { redirect_to @leads2, notice: 'Leads2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @leads2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads2s/1
  # DELETE /leads2s/1.json
  def destroy
    @leads2.destroy
    respond_to do |format|
      format.html { redirect_to leads2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leads2
      @leads2 = Leads2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leads2_params
      params.require(:leads2).permit(:name, :status, :lead_developer, :note, :hourly_rate, :deadline)
    end
end
