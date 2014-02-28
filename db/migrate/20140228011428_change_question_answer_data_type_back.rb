class ChangeQuestionAnswerDataTypeBack < ActiveRecord::Migration
  def self.up
    change_table :questions do |t|
      t.change :answer_type, :string
    end
  end
 
  def self.down
    hange_table :questions do |t|
      t.change :answer_type, :integer
    end
  end
end
