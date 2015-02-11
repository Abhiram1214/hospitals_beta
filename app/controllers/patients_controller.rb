class PatientsController < ApplicationController
	
	def show

	end

	def create_patient
		@pat=Patient.new
		@pat.doctor_id=params[:id]
		
	end

	def create
		@pat=Patient.create(new_patient)
		if @pat.save
			redirect_to(doctor_path(@pat.doctor_id))
		end
	end

	def new_patient
		params.require(:patient).permit(:name,:doctor_id)
	end

	def edit
		@pat_edit=Patient.find(params[:id])
	end

	def update

	end


end
