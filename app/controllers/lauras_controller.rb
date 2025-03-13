class LaurasController < ApplicationController
  before_action :set_laura, only: %i[ show edit update destroy ]

  # GET /lauras or /lauras.json
  def index
    @lauras = Laura.all
  end

  # GET /lauras/1 or /lauras/1.json
  def show
  end

  # GET /lauras/new
  def new
    @laura = Laura.new
  end

  # GET /lauras/1/edit
  def edit
  end

  # POST /lauras or /lauras.json
  def create
    @laura = Laura.new(laura_params)

    respond_to do |format|
      if @laura.save
        format.html { redirect_to @laura, notice: "Laura was successfully created." }
        format.json { render :show, status: :created, location: @laura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @laura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lauras/1 or /lauras/1.json
  def update
    respond_to do |format|
      if @laura.update(laura_params)
        format.html { redirect_to @laura, notice: "Laura was successfully updated." }
        format.json { render :show, status: :ok, location: @laura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @laura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lauras/1 or /lauras/1.json
  def destroy
    @laura.destroy!

    respond_to do |format|
      format.html { redirect_to lauras_path, status: :see_other, notice: "Laura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laura
      @laura = Laura.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def laura_params
      params.expect(laura: [ :personalidad, :caracteristicas ])
    end
end
