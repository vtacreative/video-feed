class ClipsController < ApplicationController
  # GET /clips
  # GET /clips.json
  def index
    render json: Clip.all
  end

  # GET /clips/:id
  # GET /clips/:id.json
  def show
    render json: Clip.find(params[:id])
  end
end