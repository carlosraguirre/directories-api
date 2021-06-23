class DirectoriesController < ApplicationController
  def index
    directory = Directory.all
    render json: product
  end

  def show
    the_id = params[:id]
    directory = Directory.find_by(id: the_id)
    render json: directory
  end

  def create
    results = Geocoder.search(params[:address])
    the_latitude = results.first.coordinates[0]
    the_longitude = results.first.coordinates[1]
    directory = Directory.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      address: params[:address],
      latitude: the_latitude,
      longitude: the_longitude
    )
    directory.save
    render json: directory
  end

  def update
    results = Geocoder.search(params[:address])
    the_latitude = results.first.coordinates[0]
    the_longitude = results.first.coordinates[1]
    
    the_id = params[:id]
    directory = Directory.find_by(id: the_id)

    directory.first_name = params[:first_name]
    directory.last_name = params[:last_name]
    directory.email = params[:email]
    directory.phone_number = params[:phone_number]
    directory.address = params[:address]
    directory.latitude = the_latitude
    directory.longitude = the_longitude
    directory.save
    render json: directory
  end

  def destroy
    the_id = params[:id]
    directory = Directory.find_by(id: the_id)

    directory.destroy
    json_directory = directory.as_json
    json_directory[:message] = "you have deleted the following item"
  end

end
