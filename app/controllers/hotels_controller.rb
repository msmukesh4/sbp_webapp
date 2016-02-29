class HotelsController < ApplicationController
  
  def index
    @hotels = Hotel.order('id ASC')
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new()
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      flash[:notice] = "Hotel is successfully saved"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end
  
  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update_attributes(hotel_params)
      flash[:notice] = "Hotel #{@hotel.hotel_name} Updated !!"
      redirect_to(:action => 'show', :id => @hotel.id)
    else
      render('edit')
    end
  end

  def delete
    @hotel = Hotel.find(params[:id])
  end

  def destroy
    hotel = Hotel.find(params[:id]).destroy
    flash[:notice] = "Hotel #{hotel.hotel_name} is Destroyed !!"
    redirect_to(:action =>'index')
  end

  private
    def hotel_params
      params.require(:hotel).permit(:hotel_name,:uid,:rating,:contact_number1,:contact_number2,:latitude,:longitude,:hotel_icon,:hotel_banner,:offer,:adderss,:caption,:details)
    end
  
end
