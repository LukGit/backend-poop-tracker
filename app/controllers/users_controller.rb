class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    # this method is used when user login
    user = User.find_by(username: params[:username])
    if user 
      # if user is found, authenticate
      if user.authenticate(params[:password])
        #  create token and send back
        token = encode_token({ user_id: user.id })
        render json: { id: user.id, username: user.username, zipcode: user.zipcode, jwt: token }
      else
        #  if authenticate fails, send invalid passowrd back
        render json: { error: 'Invalid password'}, status: :unauthorized
      end
    else
        #  if user not found, send a different message so user can be routed to signup
      render json: { error: 'Invalid username'}, status: :unauthorized
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :zipcode)
  end
end
