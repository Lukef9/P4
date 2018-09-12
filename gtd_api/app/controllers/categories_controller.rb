class CategoriesController < ApplicationController
  def index
    render json: { categories: Category.all }, :include => {:games => {}}
  end

  def show
    @category1 = Category.find(params[:id])
    render json: { category: @category1 }, :include => {:games => {}}
  end

  def create
    @new_categorie1 = Category.new(categorie_params)
    if @new_categorie1.save
      render json: { category: @new_categorie1 }
    else
      render json: { message: 'Some feilds are invalid', errors: @new_categorie1.errors}, status: :bad_request 
    end
  end

  def update
    @category1 = Category.find(params[:id])
    if @category1.update(categorie_params)
      render json: { category: @category1}
    else
      render json: { message: 'Some feilds are invalid', errors: category1.errors}, status: :bad_request 
    end
  end

  def destroy
    @category1 = Category.find(params[:id])
    @category1.destroy
    render json: { message: "Category #{params[:id]} deleted"}
  end

  private
  # We'll set up to accept request bodies in JSON API format (see: https://stackoverflow.com/questions/31594567/strong-parameters-json-api-rails)
  def categorie_params
    params
      .require(:data)
      .require(:attributes)
      .permit(
        :category_id,
        :category_name
      )
  end
end
