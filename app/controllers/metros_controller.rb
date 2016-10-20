class MetrosController < ApplicationController
  def index
    @metros = Metro.all
  end

  def show
    @metro = Metro.find(params[:id])
  end
end
