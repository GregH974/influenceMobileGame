class HomeController < ApplicationController
  def index
    @user = [name: "test", prenom: "Greg"]
  end
end
