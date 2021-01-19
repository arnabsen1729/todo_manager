class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  end

  def create
    new_user = User.create!(
      name: params[:name],
      email: params[:email],
      password: params[:password],
    )
    render plain: "New User was created with id #{new_user.id}"
  end
end
