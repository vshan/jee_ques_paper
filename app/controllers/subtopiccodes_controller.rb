class SubtopiccodesController < ApplicationController
  before_action :set_subtopiccode, only: [:show, :edit, :update, :destroy]

  # GET /subtopiccodes
  # GET /subtopiccodes.json
  def index
    @subtopiccodes = Subtopiccode.all
  end

  # GET /subtopiccodes/1
  # GET /subtopiccodes/1.json
  def show
  end

  # GET /subtopiccodes/new
  def new
    @subtopiccode = Subtopiccode.new
  end

  # GET /subtopiccodes/1/edit
  def edit
  end

  # POST /subtopiccodes
  # POST /subtopiccodes.json
  def create
    @subtopiccode = Subtopiccode.new(subtopiccode_params)

    respond_to do |format|
      if @subtopiccode.save
        format.html { redirect_to @subtopiccode, notice: 'Subtopiccode was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subtopiccode }
      else
        format.html { render action: 'new' }
        format.json { render json: @subtopiccode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subtopiccodes/1
  # PATCH/PUT /subtopiccodes/1.json
  def update
    respond_to do |format|
      if @subtopiccode.update(subtopiccode_params)
        format.html { redirect_to @subtopiccode, notice: 'Subtopiccode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subtopiccode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtopiccodes/1
  # DELETE /subtopiccodes/1.json
  def destroy
    @subtopiccode.destroy
    respond_to do |format|
      format.html { redirect_to subtopiccodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtopiccode
      @subtopiccode = Subtopiccode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subtopiccode_params
      params.require(:subtopiccode).permit(:stcode, :stname, :tcode, :active)
    end
end
