class PharmaciesController < ApplicationController
  def index
    cvs_api = CvsApi.new
    walgreens_api = WalgreensApi.new

    @cvs_pharmacies = cvs_api.get_pharmacies(params[:latitude], params[:longitude])
    @walgreens_pharmacies = walgreens_api.get_pharmacies(params[:latitude], params[:longitude])
  end
end
