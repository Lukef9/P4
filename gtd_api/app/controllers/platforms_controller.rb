class PlatformsController < ApplicationController
  def index
    render json: { platforms: Platform.all }, :include => {:games => {}}
  end

  def show
    @platform1 = Platform.find(params[:id])
    render json: { platform: @platform1 }, :include => {:games => {}}
  end

  def create
    @new_platform1 = Platform.new(platform_params)
    if @new_platform1.save
      render json: { platform: @new_platform1 }
    else
      render json: { message: 'Some feilds are invalid', errors: @new_platform1.errors}, status: :bad_request 
    end
  end

  def update
    @platform1 = Platform.find(params[:id])
    if @platform1.update(platform_params)
      render json: { platform: @platform1}
    else
      render json: { message: 'Some feilds are invalid', errors: platform1.errors}, status: :bad_request 
    end
  end

  def destroy
    @platform1 = Platform.find(params[:id])
    @platform1.destroy
    render json: { message: "Platform #{params[:id]} deleted"}
  end

  private
  # We'll set up to accept request bodies in JSON API format (see: https://stackoverflow.com/questions/31594567/strong-parameters-json-api-rails)
  def platform_params
    params
      .require(:data)
      .require(:attributes)
      .permit(
        :platform_id,
        :platform_name
      )
  end
end
