class GamesController < ApplicationController
  def index
    if (params[:platform_id])
      @games = Platform.find(params[:platform_id]).games
    elsif (params[:category_id])
      @games = Category.find(params[:category_id]).games
    elsif (params[:game_mode_id])
      @games = GameMode.find(params[:game_mode_id]).games
    else
      @games = Game.all
    end
    render json: { games: @games}, :include => {:platforms => {}, :game_modes => {} , :categories => {}}
  end

  def show
    @game1 = Game.find(params[:id])
    render json: { game: @game1 }, :include => {:platforms => {}, :game_modes => {} , :categories => {}}
  end

  def create
    @new_game1 = Game.new(game_params)
    if @new_game1.save
      render json: { game: @new_game1 }
    else
      render json: { message: 'Some feilds are invalid', errors: @new_game1.errors}, status: :bad_request 
    end
  end

  def update
    @game1 = Game.find(params[:id])
    if @game1.update(game_params)
      render json: { game: @game1}
    else
      render json: { message: 'Some feilds are invalid', errors: game1.errors}, status: :bad_request 
    end
  end

  def destroy
    @game1 = Game.find(params[:id])
    @game1.destroy
    render json: { message: "Game #{params[:id]} deleted"}
  end

  private
  # We'll set up to accept request bodies in JSON API format (see: https://stackoverflow.com/questions/31594567/strong-parameters-json-api-rails)
  def game_params
    params
      .require(:data)
      .require(:attributes)
      .permit(
        :game_id,
        :game_name,
        :rating
      )
  end
end
