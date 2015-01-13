class TopiccodesController < ApplicationController
  before_action :set_topiccode, only: [:show, :edit, :update, :destroy]

  # GET /topiccodes
  # GET /topiccodes.json
  def index
    @topiccodes = Topiccode.all
  end

  # GET /topiccodes/1
  # GET /topiccodes/1.json
  def show
  end

  # GET /topiccodes/new
  def new
    @topiccode = Topiccode.new
  end

  # GET /topiccodes/1/edit
  def edit
  end

  # POST /topiccodes
  # POST /topiccodes.json
  def create
    @topiccode = Topiccode.new(topiccode_params)

    respond_to do |format|
      if @topiccode.save
        format.html { redirect_to @topiccode, notice: 'Topiccode was successfully created.' }
        format.json { render action: 'show', status: :created, location: @topiccode }
      else
        format.html { render action: 'new' }
        format.json { render json: @topiccode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topiccodes/1
  # PATCH/PUT /topiccodes/1.json
  def update
    respond_to do |format|
      if @topiccode.update(topiccode_params)
        format.html { redirect_to @topiccode, notice: 'Topiccode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topiccode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topiccodes/1
  # DELETE /topiccodes/1.json
  def destroy
    @topiccode.destroy
    respond_to do |format|
      format.html { redirect_to topiccodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topiccode
      @topiccode = Topiccode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topiccode_params
      params.require(:topiccode).permit(:tcode, :tname, :scode, :active)
    end
end
