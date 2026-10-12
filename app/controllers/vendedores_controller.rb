class VendedoresController < ApplicationController
  before_action :set_vendedor, only: %i[ show edit update destroy ]

  # GET /vendedores or /vendedores.json
  def index
    @vendedores = Vendedor.all
  end

  # GET /vendedores/1 or /vendedores/1.json
  def show
  end

  # GET /vendedores/new
  def new
    @vendedor = Vendedor.new
  end

  # GET /vendedores/1/edit
  def edit
  end

  # POST /vendedores or /vendedores.json
  def create
    @vendedor = Vendedor.new(vendedor_params)

    respond_to do |format|
      if @vendedor.save
        format.html { redirect_to @vendedor, notice: "Vendedor was successfully created." }
        format.json { render :show, status: :created, location: @vendedor }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @vendedor.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /vendedores/1 or /vendedores/1.json
  def update
    respond_to do |format|
      if @vendedor.update(vendedor_params)
        format.html { redirect_to @vendedor, notice: "Vendedor was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @vendedor }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @vendedor.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /vendedores/1 or /vendedores/1.json
  def destroy
    @vendedor.destroy!

    respond_to do |format|
      format.html { redirect_to vendedores_path, notice: "Vendedor was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendedor
      @vendedor = Vendedor.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def vendedor_params
      params.expect(vendedor: [ :nombre, :email ])
    end
end
