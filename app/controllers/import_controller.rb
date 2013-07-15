require_relative 'html_operations'


class ImportController < ApplicationController
  
  
  def index()
    
    parse_html_to_database(:params[:auction_uploader])
    
  end
  
  def parse_html_to_database(imported_file)

     html_file = HtmlOperations.new(imported_file.current_path) 
        
       #make Property Objects
       # properties = []
    
    html_file.file_as_array.each do |prop|
       parcel = Parcel.new(:number => prop[1], 
                           :minimum_bid => prop[2].gsub(/[\,$]/, "").to_f, 
                           :address => prop[3], 
                           :city => "Indianapolis", 
                           :state => "Indiana")
       parcel.save
     end

  end
end
