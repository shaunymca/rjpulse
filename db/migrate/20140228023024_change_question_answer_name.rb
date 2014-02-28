class ChangeQuestionAnswerName < ActiveRecord::Migration
  def change
    change_table :questions do |q|
        q.rename :answer_type, :answer_type_id
    end
  end
end
