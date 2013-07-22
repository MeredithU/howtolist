class StepsController < ApplicationController
  before_filter :find_listhowto
  before_filter :find_step, :only => [:show, :edit, :update, :destroy]
  def new
  @step = @how.steps.build
  end
  def create
    @step = @how.steps.build(params[:step])
  if @step.save
    flash[:notice] = "Step has been created."
    redirect_to [@how, @step]
  else
    flash[:alert] = "Step has not been created."
    render :action => "new"
  end
  end

  def show
  end

  private
  def find_listhowto
  @how = Listhowto.find(params[:listhowto_id])
  end
  def find_step
  @step = @how.steps.find(params[:id])
  end
end
