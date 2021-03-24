class TrackersController < ApplicationController

  def index 
    trackers = Tracker.all 
    render json: trackers 
  end

  def show
    tracker = Tracker.find_by(params [:id => true])
    if tracker 
      render json: tracker 
    else 
      render json: {message: "This ID doesnt exist"}
    end
  end

  def create
    tracker = Tracker.create(tracker_params)
    render json: {tracker: TrackerSerializer.new(tracker)}, status: :created
  end

  def destroy
    tracker = Tracker.find_by(params[:id])
    tracker.destroy
    render json: {message: 'deleted'}
  end
end
