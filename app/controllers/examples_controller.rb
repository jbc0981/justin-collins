class ExamplesController < ApplicationController
  before_action :set_example, only: [:edit, :update, :show, :destroy]
  def index
    @examples = Example.all
  end
  
  def new
    @example = Example.new
  end
  
  def edit
    
  end
  
  def create
    @example = Example.new(example_params)
    if @example.save
      flash[:success] = "Example Application was successfully created."
      redirect_to example_path(@example)
    else
      render 'new'
    end
  end
    
  def update
    if @example.update(example_params)
      flash[:success] = "Example Application was successfully updated."
      redirect_to example_path(@example)
    else
      render 'edit'
    end
  end
  
  def show
  end
  
  def destroy
    @example.destroy
    flash[:danger] = "Example Application was sucessfuly deleted."
    redirect_to examples_path
  end
  
  private
    def set_example
      @example = Example.find(params[:id])
    end
    def example_params
      params.require(:example).permit(:name, :url, :giturl, :description)
    end
end