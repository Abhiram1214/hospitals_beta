class Patient < ActiveRecord::Base
	has_many :medications
	belongs_to :doctor
end
