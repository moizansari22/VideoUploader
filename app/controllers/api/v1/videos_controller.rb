class Api::V1::VideosController < ApplicationController
  def index
    @videos = Video.all 
    render json: @videos.map {|video|
      if video.video.attached? 
        video.as_json.merge(video_path: url_for(video.video))
      else 
        video.as_json only: :title
      end
    }
  end
      
  def create
    @video = Video.new(create_params) 
    @video.save
    render json: @video, status: :created
  end
    
  private
    def create_params
      params.require(:video).permit(:title , :video , :category_id)
    end
end
