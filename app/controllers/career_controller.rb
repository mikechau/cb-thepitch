require 'open-uri' 
require 'awesome_print'

class CareerController < ApplicationController

	def index

		# @job_title = params[:job_title]
		# @company_name = params[:company_name]
		# @location = params[:location]

		# @job_title2 = @job_title.to_s.gsub(/,*\s+/,'+')
		# @company_name2 = @company_name.to_s.gsub(/,*\s+/,'+')
		# @location2 = @location2.to_s.gsub(/,*\s+/,'+')

		# url = "http://api.careerbuilder.com/v1/jobsearch?DeveloperKey=WDTX43Z6Z0TD34QLFVRL&JobTitle=#{@job_title2}&CompanyName=#{@company_name2}&Location=#{@location2}&OutputJson=true" 
		# json_response = open(url).read
		# @output = JSON.parse(json_response)
		# @search_results = @output["ResponseJobSearch"]["Results"]["JobSearchResult"]

	end

	def create

		# @job_title = params[:job_title]
		# @company_name = params[:company_name]
		# @location = params[:location]

		# @job_title2 = @job_title.to_s.gsub(/,*\s+/,'+')
		# @company_name2 = @company_name.to_s.gsub(/,*\s+/,'+')
		# @location2 = @location2.to_s.gsub(/,*\s+/,'+')

		#redirect_to "/jobs/results"
	end

	def results

		@job_title = params[:job_title]
		@company_name = params[:company_name]
		@location = params[:location]


		@job_title2 = @job_title.to_s.gsub(/,*\s+/,'+')
		@company_name2 = @company_name.to_s.gsub(/,*\s+/,'+')
		@location2 = @location.to_s.gsub(/,*\s+/,'+')

		@url = "http://api.careerbuilder.com/v1/jobsearch?DeveloperKey=WDTX43Z6Z0TD34QLFVRL&JobTitle=#{@job_title2}&CompanyName=#{@company_name2}&Location=#{@location2}&OutputJson=true" 
		json_response = open(@url).read
		output = JSON.parse(json_response)
		@search_results = output["ResponseJobSearch"]["Results"]["JobSearchResult"]

	end

   def description

   		@post_id = params[:id]

   		url = "http://api.careerbuilder.com/v1/job?DeveloperKey=WDTX43Z6Z0TD34QLFVRL&DID=#{@post_id}&OutputJson=true"

		json_response = open(url).read
		output = JSON.parse(json_response)
		@result = output["ResponseJob"]["Job"]

	end

end