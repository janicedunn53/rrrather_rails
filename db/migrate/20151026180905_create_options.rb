class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.column :option1, :string
      t.column :option2, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
