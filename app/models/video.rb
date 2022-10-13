class Video < ApplicationRecord
    has_one_attached :video
    belongs_to :category
    validates :video, presence: true
    validates :video, file_size: { less_than_or_equal_to: 200.megabytes, message: "Please Check File Size" },
    file_content_type: { allow: ['video/mp4', 'video/mov'],
    message: "Please Check File Format"}
end
