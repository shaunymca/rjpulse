class ChangeAnswerSToAnswerOptionId < ActiveRecord::Migration
  def change
    change_table :answers do |t|
        t.rename :value_s, :answer_option_id
    end
  end
end
