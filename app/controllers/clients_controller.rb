class ClientsController < ProtectedController
  before_action :set_client, only: [:update, :destroy]

  # GET /clients
  def index
    @clients = Client.all

    render json: @clients
  end

  # GET /clients/1
  def show
    render json: Client.find(params[:id])
  end

  # POST /clients
  def create
    @client = current_user.clients.build(client_params)

    if @client.save
      render json: @client, status: :created, location: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_client
    @client = current_user.client.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def client_params
    params.require(:client).permit(:first_name, :last_name, :email)
  end
  private :set_client, :client_params
end
