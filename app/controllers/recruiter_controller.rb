require 'open-uri' 
require 'awesome_print'

class RecruiterController < ApplicationController
  
  def recruiter_search    
  end

  def recruiter_index
    
     @pitches = Pitch.all     
     @pitches_for_company = []
     
     @pitches.each do |pitch|   
       if pitch.company == params[:company]
         @pitches_for_company << pitch         
       end   
     end
     
     puts "printing the pitches for specific company"
        
     puts @pitches_for_company
     
     puts "before the flash"
     
     # Error check
     if @pitches_for_company.nil? 
       flash[:notice] = "NO PITCHES FOR YOU!!" 
       render 'pitches'
     end
          
     # Support: /pitches.json
     respond_to do |format|
       format.html # render 'index'
       format.json { render :json => @pitches }
       format.xml { render :xml => @pitches }      
     end
  
  end

end