class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_option_id
      t.text :value_t

      t.timestamps
    end
  end
end
