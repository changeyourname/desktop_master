#encoding: utf-8 
class DefaultController < ApplicationController
  def index
     @game_run_logs = GemeRunLog.all.pluck(:no).uniq 
  end

  def detail
     @game_run_logs = GemeRunLog.all.pluck(:no).uniq 
     @game_run_log = GemeRunLog.where(no: params[:id]).order("id desc").limit(500)
  end
end
