class KeyDataController < ApplicationController
  def index
    @key_data = KeyDatum.all
    #@value_store = ValueStore.find_by(key_datum_id: @key_datum.id) #value store of the key
    @storage_types = StorageType.all
    @storage_accounts = StorageAccount.all
    p @key_data
  end

  def create
   @key_datum = KeyDatum.new(key_datum_params)
   @storage_types = StorageType.all
    if @key_datum.save
      #@storage_type = StorageType.create(name: params[:account])
      # @storage_account = StorageAccount.create(storage_type_id: @storage_type)
      @users_storage_account = StorageAccount.find_by()
      @value_store = ValueStore.create(storage_account_id: params[:account], key_datum_id: @key_datum.id)
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
