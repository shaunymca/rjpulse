class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :question_s
      t.text :question_t
      t.string :answer_type

      t.timestamps
    end
  end
end
