class DropCategoriesTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :categories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
