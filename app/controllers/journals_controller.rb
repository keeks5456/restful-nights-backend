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
    render json: {journal: JournalSerializer.new(journal)}, status: :created
  end

  def destroy
    journal = Journal.find_by(params[:id])
    journal.destroy
    render json: {message: 'deleted'}
  end

  private
  def journal_params
    journal.require(:journal).permit(:content, :user_id)
  end

end
