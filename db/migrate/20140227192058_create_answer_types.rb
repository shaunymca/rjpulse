class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.integer :question_id
      t.string :value

      t.timestamps
    end
  end
end
