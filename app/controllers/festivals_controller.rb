class FestivalsController < ApplicationController
  
  def index
    @festivals = Festival.order('id ASC')
  end

  def show
    @festival = Festival.find(params[:id])
  end

  def new
    @festival = Festival.new({:uid => "nmdioaNFKNHJN3MD"})
  end

  def create
    @festival = Festival.new(festival_params)
    if @festival.save
      flash[:notice] = "Festival Created Successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @festival = Festival.find(params[:id])
  end

  def update
    @festival = Festival.find(params[:id])
    if @festival.update_attributes(festival_params)
        flash[:notice] = "Festival #{@festival.festival_name} Updated" 
        redirect_to(:action => 'show', :id => @festival.id)
    else
      render('edit')
    end
  end

  def delete
    @festival = Festival.find(params[:id])
  end

  def destroy
    festival = Festival.find(params[:id]).destroy
    flash[:notice] = "Festival #{festival.festival_name} destroyed Successfully"
    redirect_to(:action => 'index')
  end

  private
    def festival_params
      params.require(:festival).permit(:festival_name, :festival_date, :festival_icon, :festival_banner, :latitude, :longitude, :caption, :details)      
    end

end
