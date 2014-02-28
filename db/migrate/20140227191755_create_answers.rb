class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :value_s
      t.text :value_t

      t.timestamps
    end
  end
end
