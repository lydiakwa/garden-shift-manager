class ShiftsController < ApplicationController
  def index
    # GET all
    @shifts = Shift.all

    # @user = User.first
  end

  def show
    @shift = Shift.find(params[:id])
  end

  def new
    # code to create an empty post and send the user
    # to the New view for it (new.html.erb), which will have a
    # form for creating the post
    @shift = Shift.new
  end

  def create
    # @shift = Shift.new(title: params[:shift][:title], start_date: params[:shift][:start_date], end_date: params[:shift][:end_date])
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to shifts_path
    else
      render :new, status: :unprocessable_entity
    end
    # code to create a new post based on the parameters that
    # were submitted with the form (and are now available in the
    # params hash)
  end

  private
  def shift_params
    params.require(:shift).permit(:title, :start_date, :end_date)
  end
end
