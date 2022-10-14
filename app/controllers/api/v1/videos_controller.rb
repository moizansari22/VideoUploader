class Api::V1::VideosController < ApplicationController
  def index
    @videos = Video.all 
    render json: @videos.map { |user| 
    if user.video.attached? 
      user.as_json.merge(video_path: url_for(user.video))
    else 
      user.as_json only: :title
    end }
  end
    
  def create
    @video = Video.new(create_params)  
    if @video.save
      render json: success_json(@video), status: :created
    else
      render json: error_json(@video), status: :unprocessable_entity
    end
  end
    
  private
    def create_params
      params.require(:video).permit(:title , :video , :category_id)
    end
    
    def success_json(video)
      { video: { id: video.id, title: video.title, category_id: video.category_id, video: video.video } }
    end
    
    def error_json(video)
      { errors: video.errors.full_messages }
    end
end
