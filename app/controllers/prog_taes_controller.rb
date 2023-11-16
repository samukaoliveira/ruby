class ProgTaesController < ApplicationController

  before_action :authenticate_user!
  before_action :set_prog_tae, only: %i[ show edit update destroy ]

  # GET /prog_taes or /prog_taes.json
  def index
    @prog_taes = ProgTae.all
  end

  # GET /prog_taes/1 or /prog_taes/1.json
  def show
  end

  # GET /prog_taes/new
  def new
    @prog_tae = ProgTae.new
  end

  # GET /prog_taes/1/edit
  def edit
  end

  # POST /prog_taes or /prog_taes.json
  def create
    @prog_tae = ProgTae.new(prog_tae_params)

    respond_to do |format|
      if @prog_tae.save
        format.html { redirect_to prog_tae_url(@prog_tae), notice: "Prog tae was successfully created." }
        format.json { render :show, status: :created, location: @prog_tae }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prog_tae.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prog_taes/1 or /prog_taes/1.json
  def update
    respond_to do |format|
      if @prog_tae.update(prog_tae_params)
        format.html { redirect_to prog_tae_url(@prog_tae), notice: "Prog tae was successfully updated." }
        format.json { render :show, status: :ok, location: @prog_tae }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prog_tae.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prog_taes/1 or /prog_taes/1.json
  def destroy
    @prog_tae.destroy!

    respond_to do |format|
      format.html { redirect_to prog_taes_url, notice: "Prog tae was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prog_tae
      @prog_tae = ProgTae.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prog_tae_params
      params.require(:prog_tae).permit(:siape, :nome, :portaria, :classe, :nivel_padrao_atual, :nivel_padrao_novo, :inicio_prog, :fim_prog, :iq_atual, :iq_novo, :anuenio, :insalubridade, :medico, :venc_basico_comp)
    end
end
