class ChangeAnswerStringsToInteger < ActiveRecord::Migration
    def self.up 
        change_table :answers do |t|
            ALTER TABLE messages ALTER COLUMN sender_id TYPE integer
        end
    end
    def self.down
        change_table :answers do |t|
            t.change :value_s, :string 
        end

    end
end
