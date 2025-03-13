class TejidosController < ApplicationController
  before_action :set_tejido, only: %i[ show edit update destroy ]

  # GET /tejidos or /tejidos.json
  def index
    @tejidos = Tejido.all
  end

  # GET /tejidos/1 or /tejidos/1.json
  def show
  end

  # GET /tejidos/new
  def new
    @tejido = Tejido.new
  end

  # GET /tejidos/1/edit
  def edit
  end

  # POST /tejidos or /tejidos.json
  def create
    @tejido = Tejido.new(tejido_params)

    respond_to do |format|
      if @tejido.save
        format.html { redirect_to @tejido, notice: "Tejido was successfully created." }
        format.json { render :show, status: :created, location: @tejido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tejido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tejidos/1 or /tejidos/1.json
  def update
    respond_to do |format|
      if @tejido.update(tejido_params)
        format.html { redirect_to @tejido, notice: "Tejido was successfully updated." }
        format.json { render :show, status: :ok, location: @tejido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tejido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tejidos/1 or /tejidos/1.json
  def destroy
    @tejido.destroy!

    respond_to do |format|
      format.html { redirect_to tejidos_path, status: :see_other, notice: "Tejido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tejido
      @tejido = Tejido.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def tejido_params
      params.expect(tejido: [ :model, :color, :cantidad ])
    end
end
