class KeyDataController < ApplicationController
  def index
    @key_data = KeyDatum.all
    p @key_data
  end

  def create
   @key_datum = KeyDatum.new(key_datum_params)
    if @key_datum.save
      redirect_to @key_datum
    else
      "you fakslfjks"
    end
  end

  def show
    @key_datum = KeyDatum.find(params[:id])
  end

  def update

  end

  private
    def key_datum_params
      params.require(:key_datum).permit(:key)
    end
  end
