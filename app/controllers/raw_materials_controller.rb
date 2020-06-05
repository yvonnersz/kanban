class RawMaterialsController < ApplicationController

  get '/raw_materials' do
    @raw_materials = RawMaterial.all
    erb :'/raw_materials/index'
  end

  get '/raw_materials/new' do
    erb :'/raw_materials/new'
  end

  post '/raw_materials' do
    @raw_material = RawMaterial.create(params)
    redirect "/raw_materials/#{@raw_material.id}"
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



end
