class ClientsController < ApplicationController
	def index
		@clients = ['client1', 'client2']
	end
end
