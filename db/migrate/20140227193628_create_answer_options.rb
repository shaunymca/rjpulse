class CreateAnswerOptions < ActiveRecord::Migration
  def change
    create_table :answer_options do |t|
      t.integer :question_id
      t.string :value

      t.timestamps
    end
  end
end
