require 'open-uri' 
require 'awesome_print'

class CareerController < ApplicationController

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

# ====================================
   def description

   		@post_id = params[:did]

   		url = "http://api.careerbuilder.com/v1/job?DeveloperKey=WDTX43Z6Z0TD34QLFVRL&DID=#{@post_id}&OutputJson=true"

		json_response = open(url).read
		output = JSON.parse(json_response)
		@result = output["ResponseJob"]["Job"]

	end
	
# ====================================	
	
  def edit
    @pitch = Pitch.find_by_id(params[:id])
  end

# ====================================	
  
  def show
    @pitch = Pitch.find_by_id(params[:id])
  end
  
# ====================================	

  def update
    @pitch = Pitch.find_by_id(params[:id])
        
    if @pitch.update_attributes(params[:pitch])
      redirect_to pitch_url(@pitch.id), :notice => "Pitch updated successfully!" # Flash notice
    else
      render 'edit' # Stay in "edit view to continue to ask for inputs"
    end
  end

# ====================================
  
  def index
    @pitches = Pitch.all
    
    # Support: /pitches.json
    respond_to do |format|
      format.html # render 'index'
      format.json { render :json => @pitches }
      format.xml { render :xml => @pitches }      
    end    
  end

# ====================================
  def new
    @pitch = Pitch.new   
    @pitch.did = params[:did]
    # @pitch.company = "CareerBuilder"
    # @pitch.job_title = "Program Manager"
  end
  
  def create
    @pitch = Pitch.new params[:pitch]
    
    if @pitch.save    
      # redirect_to "/jobs/description/#{@pitch[:did]}/pitches/#{@pitch[:id]}", :notice => "Pitch created successfully!" 
      redirect_to pitch_url(@pitch.did, @pitch.id), :notice => "Pitch created successfully!" 
       
    else
      render 'new'
    end
  end

# ====================================

  def destroy
    pitch = Pitch.find_by_id(params[:id])
    pitch.destroy
    redirect_to pitches_url
  end


  # def recruiter_index
  #   
  #    @pitches = Pitch.all     
  #    @pitches_for_company = Array.new
  #    
  #    @pitches.each do |pitch|   
  #      if pitch.company == params[:company]
  #        @pitches_for_company << pitch         
  #      end   
  #    end
  #    
  #    puts "printing the pitches for specific company"
  #       
  #    puts @pitches_for_company
  #    
  #    puts "before the flash"
  #    
  #    # Error check
  #    if @pitches_for_company.nil? 
  #      flash[:notice] = "NO PITCHES FOR YOU!!" 
  #      render 'pitches'
  #    end
  #         
  #    # Support: /pitches.json
  #    respond_to do |format|
  #      format.html # render 'index'
  #      format.json { render :json => @pitches }
  #      format.xml { render :xml => @pitches }      
  #    end
  # 
  # end

end