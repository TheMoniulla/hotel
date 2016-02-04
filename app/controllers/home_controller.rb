class HomeController < ApplicationController
  def show
    @guests = Guest.all
  end
end