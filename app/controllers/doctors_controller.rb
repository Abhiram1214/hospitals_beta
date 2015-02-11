class DoctorsController < ApplicationController
	def index
		@doctor=Doctor.all
	end

	def show
		@doctor=Doctor.find(params[:id])
	end

	def new
		@doc_new=Doctor.new
	end

	def create
		@doc_new=Doctor.create(create_doc)
		if @doc_new.save
			redirect_to(doctors_path)
		end
	end

	def create_doc
		params.require(:doctor).permit(:name)
	end
end
