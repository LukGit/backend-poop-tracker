class ReportsController < ApplicationController
  def index
    # this method is called to return all bucket items
    reports = Report.all
    render json: reports
  end

  def create
    # this method is called when a new bucket item is added
    report = Report.create!(report_params)
    render json: report
  end

  private

  def report_params
    params.require(:report).permit(:poop_lat, :poop_lng, :user_id, :poop_size)
  end
end
