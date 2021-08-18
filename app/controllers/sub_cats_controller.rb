class SubCatsController < ApplicationController
  before_action :set_sub_cat, only: [:show, :update, :destroy]

  # GET /sub_cats
  def index
    @sub_cats = SubCat.all

    render json: @sub_cats
  end

  # GET /sub_cats/1
  def show
    render json: @sub_cat
  end

  # POST /sub_cats
  def create
    @sub_cat = SubCat.new(sub_cat_params)

    if @sub_cat.save
      render json: @sub_cat, status: :created, location: @sub_cat
    else
      render json: @sub_cat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sub_cats/1
  def update
    if @sub_cat.update(sub_cat_params)
      render json: @sub_cat
    else
      render json: @sub_cat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sub_cats/1
  def destroy
    @sub_cat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_cat
      @sub_cat = SubCat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sub_cat_params
      params.require(:sub_cat).permit(:name, :disc, :cat_id)
    end
end
