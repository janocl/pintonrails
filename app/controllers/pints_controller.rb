class PintsController < ApplicationController
  before_action :set_pint, only: [:show, :edit, :update, :destroy]

  # GET /pints
  # GET /pints.json
  def index
    @pints = Pint.all
  end

  # GET /pints/1
  # GET /pints/1.json
  def show
    @pint = Pint.find(params[:id])
  end

  # GET /pints/new
  def new
    @pint = Pint.new
  end

  # GET /pints/1/edit
  def edit
    @pint = Pint.find(params[:id])
  end

  # POST /pints
  # POST /pints.json
  def create
    @pint = Pint.new(pint_params)

    respond_to do |format|
      if @pint.save
        format.html { redirect_to @pint, notice: 'Pint was successfully created.' }
        format.json { render :show, status: :created, location: @pint }
      else
        format.html { render :new }
        format.json { render json: @pint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pints/1
  # PATCH/PUT /pints/1.json
  def update

    @pint = Pint.find(params[:id])    
    if @pint.update(params[:pint].permit(:title, :description, :image, :biography))
        redirect_to @pint
    else
      render 'edit'
    end

    # respond_to do |format|
    #   if @pint.update(pint_params)
    #     format.html { redirect_to @pint, notice: 'Pint was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @pint }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @pint.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /pints/1
  # DELETE /pints/1.json
  def destroy
    @pint.destroy
    respond_to do |format|
      format.html { redirect_to pints_url, notice: 'Pint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pint
      @pint = Pint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pint_params
      params.require(:pint).permit(:title, :description, :image, :biography)
    end
end
