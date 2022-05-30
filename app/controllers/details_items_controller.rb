class DetailsItemsController < ApplicationController
  before_action :set_details_item, only: %i[ show edit update destroy ]

  # GET /details_items or /details_items.json
  def index
    @details_items = DetailsItem.all
  end

  # GET /details_items/1 or /details_items/1.json
  def show
  end

  # GET /details_items/new
  def new
    @details_item = DetailsItem.new
  end

  # GET /details_items/1/edit
  def edit
  end

  # POST /details_items or /details_items.json
  def create
    @details_item = DetailsItem.new(details_item_params)

    respond_to do |format|
      if @details_item.save
        format.html { redirect_to details_item_url(@details_item), notice: "Details item was successfully created." }
        format.json { render :show, status: :created, location: @details_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @details_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details_items/1 or /details_items/1.json
  def update
    respond_to do |format|
      if @details_item.update(details_item_params)
        format.html { redirect_to details_item_url(@details_item), notice: "Details item was successfully updated." }
        format.json { render :show, status: :ok, location: @details_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @details_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details_items/1 or /details_items/1.json
  def destroy
    @details_item.destroy

    respond_to do |format|
      format.html { redirect_to details_items_url, notice: "Details item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_details_item
      @details_item = DetailsItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def details_item_params
      params.require(:details_item).permit(:name, :price)
    end
end
