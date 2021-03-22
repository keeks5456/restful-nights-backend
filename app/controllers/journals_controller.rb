class JournalsController < ApplicationController
  
  def index 
    journals = Journal.all
    render json: journals
  end

  def show
    journal = Journal.find_by(params [:id => true])
    render json: journal
  end 

  def create 
    journal = Journal.create(journal_params)
  end

end
