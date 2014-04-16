class TellersController < ApplicationController
	def index
		@tellers = Teller.all
	end
	
	def new
		@teller = Teller.new
	end

	def create
		@teller = Teller.new(teller_params)
		if @teller.save
			redirect_to tellers_path
		end
	end



	private
		def teller_params
			params.require(:teller).permit(:name)
		end
end
