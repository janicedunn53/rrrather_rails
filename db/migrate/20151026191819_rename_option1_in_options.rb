class RenameOption1InOptions < ActiveRecord::Migration
  def change
    rename_column(:options, :option1, :scenario)
  end
end
