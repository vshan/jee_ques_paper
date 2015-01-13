class ScodesController < ApplicationController
  before_action :set_scode, only: [:show, :edit, :update, :destroy]

  # GET /scodes
  # GET /scodes.json
  def index
    @scodes = Scode.all
  end

  # GET /scodes/1
  # GET /scodes/1.json
  def show
  end

  # GET /scodes/new
  def new
    @scode = Scode.new
  end

  # GET /scodes/1/edit
  def edit
  end

  # POST /scodes
  # POST /scodes.json
  def create
    @scode = Scode.new(scode_params)

    respond_to do |format|
      if @scode.save
        format.html { redirect_to @scode, notice: 'Scode was successfully created.' }
        format.json { render action: 'show', status: :created, location: @scode }
      else
        format.html { render action: 'new' }
        format.json { render json: @scode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scodes/1
  # PATCH/PUT /scodes/1.json
  def update
    respond_to do |format|
      if @scode.update(scode_params)
        format.html { redirect_to @scode, notice: 'Scode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @scode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scodes/1
  # DELETE /scodes/1.json
  def destroy
    @scode.destroy
    respond_to do |format|
      format.html { redirect_to scodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scode
      @scode = Scode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scode_params
      params.require(:scode).permit(:scode, :sname)
    end
end
