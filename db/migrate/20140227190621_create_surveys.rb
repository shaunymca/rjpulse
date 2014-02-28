class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.string :img_location

      t.timestamps
    end
  end
end
