class UsersController < ApplicationController
  def index

    render("users/index.html.erb")
  end

  def show
    render("users/show.html.erb")
  end
end
