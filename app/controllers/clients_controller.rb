class ClientsController < ApplicationController
	def index
		@clients = Client.all
	end

	def show
		@client = Client.find(params[:id])
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		client_params = params.require(:client).permit(:first_name, :last_name, :age, :gender, :email, :phone_number, :first_session, :last_session, :final_session, :next_session)
		@client.update(client_params)
		redirect_to @client
	end

end
