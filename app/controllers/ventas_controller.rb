class VentasController < ApplicationController
  before_action :set_venta, only: %i[ show edit update destroy ]

  # GET /ventas or /ventas.json
  def index
    @ventas = Venta.all
  end

  # GET /ventas/1 or /ventas/1.json
  def show
  end

  # GET /ventas/new
  def new
    @venta = Venta.new
  end

  # GET /ventas/1/edit
  def edit
  end

  # POST /ventas or /ventas.json
  def create
    @venta = Venta.new(venta_params)

    respond_to do |format|
      if @venta.save
        format.html { redirect_to @venta, notice: "Venta was successfully created." }
        format.json { render :show, status: :created, location: @venta }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @venta.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /ventas/1 or /ventas/1.json
  def update
    respond_to do |format|
      if @venta.update(venta_params)
        format.html { redirect_to @venta, notice: "Venta was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @venta }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @venta.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /ventas/1 or /ventas/1.json
  def destroy
    @venta.destroy!

    respond_to do |format|
      format.html { redirect_to ventas_path, notice: "Venta was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venta
      @venta = Venta.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def venta_params
      params.expect(venta: [ :vendedor_id, :monto, :fecha ])
    end
end
