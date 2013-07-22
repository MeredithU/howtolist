class ListhowtosController < ApplicationController

  def index
    @how = Listhowto.all
  end

  def new
  @how = Listhowto.new
  end

  def create
  @how = Listhowto.new(params[:listhowto])
  if @how.save
    flash[:notice] = "One howtolist has been created."
    redirect_to @how
  else
    flash[:alert] = "One howtolist has not been created."
    render :action => 'new'
  end
  end

  def show
    @how = Listhowto.find(params[:id])
  end

  def edit
    @how = Listhowto.find(params[:id])
  end

  def update
    @how = Listhowto.new(params[:listhowto])
  if @how.update_attributes(params[:listhowto])
    flash[:notice] = "One howtolist has been updated."
    redirect_to @how
  else
    flash[:alert] = "One howtolist has not been updated."
    render :action => 'edit'
  end
end

  def destroy
  @how = Listhowto.find(params[:id])
  @how.destroy
  flash[:notice] = "One howtolist has been deleted."
  redirect_to listhowtos_path
  end

end
