class MattressesController < ApplicationController
  before_action :set_mattress, only: %i[ show edit update destroy ]

  # GET /mattresses or /mattresses.json
  def index
    @mattresses = Mattress.all
    @shops = Shop.all
  end

  # GET /mattresses/1 or /mattresses/1.json
  def show
<<<<<<< HEAD
    @mattress = Mattress.find(params[:id])
    @mattress1 = Mattress.maximum(:id)
    @shop = Shop.find(params[:id])
    @shop1 = Shop.maximum(:id)



=======
    @shop = Shop.all
    @mattress = Mattress.find(params[:id])
>>>>>>> d3844b05a9caa7deff19fe34d29fb85bfe611900
  end

  # GET /mattresses/new
  def new
    @mattress = Mattress.new
  end

  # GET /mattresses/1/edit
  def edit
  end

  # POST /mattresses or /mattresses.json
  def create

    @mattress = Mattress.new(mattress_params)

    if @mattress.save
      redirect_to mattress_path(@mattress)


    else
      render :edit
    end
  end

  # PATCH/PUT /mattresses/1 or /mattresses/1.json
  def update
    respond_to do |format|
      if @mattress.update(mattress_params)
        format.html { redirect_to mattress_url(@mattress), notice: "Mattress was successfully updated." }
        format.json { render :show, status: :ok, location: @mattress }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mattress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mattresses/1 or /mattresses/1.json
  def destroy
    @mattress.destroy

    respond_to do |format|
      format.html { redirect_to mattresses_url, notice: "Mattress was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mattress
      @mattress = Mattress.find(params[:id])

    end

    # Only allow a list of trusted parameters through.
    def mattress_params
      params.require(:mattress).permit(:mattress_name, :shop_name)
    end

end
