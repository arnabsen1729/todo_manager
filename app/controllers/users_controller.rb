class UsersController < ApplicationController
  def new
    render "users/new"
  end

  def index
    render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  end

  def create
    new_user = User.create!(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
    )
    render plain: "New User was created with id #{new_user.id}"
  end

  def authenticate
    is_user = (User.find_by(email: params[:email], password: params[:password]) != nil)
    render plain: is_user
  end
end
