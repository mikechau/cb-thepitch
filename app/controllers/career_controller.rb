require 'open-uri'

class CareerController < ApplicationController

	def index

		@job_title = params[:job_title]
		@company_name = params[:company_name]
		@location = params[:location]

		@job_title2 = @job_title.to_s.gsub(/,*\s+/,'+')
		@company_name2 = @company_name.to_s.gsub(/,*\s+/,'+')
		@location2 = @location2.to_s.gsub(/,*\s+/,'+')
	end

	def create
		# @job_title = params[:job_title]
		# @company_name = params[:company_name]
		# @location = params[:location]

		# @job_title2 = @job_title.to_s.gsub(/,*\s+/,'+')
		# @company_name2 = @company_name.to_s.gsub(/,*\s+/,'+')
		# @location2 = @location2.to_s.gsub(/,*\s+/,'+')

		redirect_to "/jobs"
	end

end