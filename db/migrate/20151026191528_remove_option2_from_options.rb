class RemoveOption2FromOptions < ActiveRecord::Migration
  def change
    remove_column(:options, :option2, :string)
  end
end
