class ListhowtosController < ApplicationController

  def index
  end

  def new
  @how = Listhowto.new
  end

  def create
  @how = Listhowto.new(params[:Listhowto])
  if @how.save
    flash[:notice] = "One howtolist has been created."
    redirect_to @how
  else
    flash[:alert] = "The howtolist has not been created."
    render :action => 'new'
  end
  end

  def show
    @how = Listhowto.find(params[:id])
  end
end
