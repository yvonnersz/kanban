class RawMaterialsController < ApplicationController

  get '/raw_materials' do
    @raw_materials = RawMaterial.all
    erb :'/raw_materials/index'
  end

  get '/raw_materials/new' do
    if logged_in?
      erb :'/raw_materials/new'
    else
      flash[:message] = "Please login to create new raw materials."
      erb :'/login'
    end
  end

  post '/raw_materials' do
    if params[:chemical].empty? || params[:company].empty? || params[:lot_number].empty? || params[:amount].empty?
      flash[:message] = "Please enter in all required fields."
      redirect '/raw_materials/new'
    else
      @raw_material = RawMaterial.create(params)
      @raw_material.user_id = current_user.id
      @raw_material.save
      redirect "/raw_materials/#{@raw_material.id}"
    end
  end

  get '/raw_materials/:id' do
    @raw_material = RawMaterial.find_by(:id => params[:id])
    erb :'/raw_materials/show'
  end

  get '/raw_materials/:id/edit' do
    @raw_material = RawMaterial.find_by(:id => params[:id])
    erb :'raw_materials/edit'
  end

  patch '/raw_materials/:id' do
    @raw_material = RawMaterial.find_by(:id => params[:id])
    @raw_material.update(:chemical => params[:chemical],
                         :company => params[:company],
                         :lot_number => params[:lot_number],
                         :amount => params[:amount])
    redirect "/raw_materials/#{@raw_material.id}"
  end

  delete '/raw_materials/:id/delete' do
    @raw_material = RawMaterial.find_by(:id => params[:id])
    @raw_material.delete
    redirect '/raw_materials'
  end


end
