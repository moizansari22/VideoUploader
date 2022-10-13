class RemoveIntroductionFromVideos < ActiveRecord::Migration[7.0]
  def change
    remove_column :videos, :introduction, :text
  end
end
