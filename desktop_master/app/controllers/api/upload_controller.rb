#encoding: utf-8 
class Api::UploadController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def index
  
  end

  def logs
    no = params[:no]
    user = params[:user]
    log = params[:log]
    if no.present? && user.present? && log.present?
      GemeRunLog.create(no: no, user: user, log: log)
      rs = {status: 1}
    else
      rs = {status: 0}
    end
    render json: rs
  end
end
