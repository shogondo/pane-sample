class HomeController < ApplicationController
  def show()
    redirect_to controller: "tasks", action: "index"
  end
end
