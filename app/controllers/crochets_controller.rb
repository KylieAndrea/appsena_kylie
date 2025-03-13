class CrochetsController < ApplicationController
  before_action :set_crochet, only: %i[ show edit update destroy ]

  # GET /crochets or /crochets.json
  def index
    @crochets = Crochet.all
  end

  # GET /crochets/1 or /crochets/1.json
  def show
  end

  # GET /crochets/new
  def new
    @crochet = Crochet.new
  end

  # GET /crochets/1/edit
  def edit
  end

  # POST /crochets or /crochets.json
  def create
    @crochet = Crochet.new(crochet_params)

    respond_to do |format|
      if @crochet.save
        format.html { redirect_to @crochet, notice: "Crochet was successfully created." }
        format.json { render :show, status: :created, location: @crochet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @crochet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crochets/1 or /crochets/1.json
  def update
    respond_to do |format|
      if @crochet.update(crochet_params)
        format.html { redirect_to @crochet, notice: "Crochet was successfully updated." }
        format.json { render :show, status: :ok, location: @crochet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @crochet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crochets/1 or /crochets/1.json
  def destroy
    @crochet.destroy!

    respond_to do |format|
      format.html { redirect_to crochets_path, status: :see_other, notice: "Crochet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crochet
      @crochet = Crochet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def crochet_params
      params.expect(crochet: [ :modelo, :color, :cantidad ])
    end
end
