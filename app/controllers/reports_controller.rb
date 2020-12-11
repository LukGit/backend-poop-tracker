class ReportsController < ApplicationController
  def index
    # this method is called to return all bucket items
    reports = Report.all
    render json: reports
  end

end
