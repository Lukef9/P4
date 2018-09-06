class GameModesController < ApplicationController
  def index
    render json: { game_modes: GameMode.all }
  end

  def show
    @game_mode1 = GameMode.find(params[:id])
    render json: { game_mode: @game_mode1 }
  end

  def create
    @new_game_mode1 = GameMode.new(game_mode_params)
    if @new_game_mode1.save
      render json: { game_mode: @new_game_mode1 }
    else
      render json: { message: 'Some feilds are invalid', errors: @new_game_mode1.errors}, status: :bad_request 
    end
  end

  def update
    @game_mode1 = GameMode.find(params[:id])
    if @game_mode1.update(game_mode_params)
      render json: { game_mode: @game_mode1}
    else
      render json: { message: 'Some feilds are invalid', errors: game_mode1.errors}, status: :bad_request 
    end
  end

  def destroy
    @game_mode1 = GameMode.find(params[:id])
    @game_mode1.destroy
    render json: { message: "Game mode #{params[:id]} deleted"}
  end

  private
  # We'll set up to accept request bodies in JSON API format (see: https://stackoverflow.com/questions/31594567/strong-parameters-json-api-rails)
  def game_mode_params
    params
      .require(:data)
      .require(:attributes)
      .permit(
        :game_mode_id,
        :game_mode_name,
      )
  end
end
