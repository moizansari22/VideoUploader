class Video < ApplicationRecord
    has_one_attached :video
    has_one_attached :clip
end
