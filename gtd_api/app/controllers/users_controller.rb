class UsersController < ApplicationController
  def index
    render json: { users: User.all }
  end

  def show
    @user1 = User.find(params[:id])
    render json: { user: @user1 }
  end

  def create
    puts 'hello'
    @new_user1 = User.new(user_params)
    if @new_user1.save
      render json: { user: @new_user1 }
    else
      render json: { message: 'Some feilds are invalid', errors: @new_user1.errors}, status: :bad_request 
    end
  end

  def update
    @user1 = User.find(params[:id])
    if @user1.update(user_params)
      render json: { user: @user1}
    else
      render json: { message: 'Some feilds are invalid', errors: user1.errors}, status: :bad_request 
    end
  end

  def destroy
    @user1 = User.find(params[:id])
    @user1.destroy
    render json: { message: "User #{params[:id]} deleted"}
  end

  private
  # We'll set up to accept request bodies in JSON API format (see: https://stackoverflow.com/questions/31594567/strong-parameters-json-api-rails)
  def user_params
    params
      .require(:data)
      .require(:attributes)
      .permit(
        :username,
        :email,
        :password_digest
      )
  end
end
