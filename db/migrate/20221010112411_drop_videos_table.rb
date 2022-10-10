class DropVideosTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :videos
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
