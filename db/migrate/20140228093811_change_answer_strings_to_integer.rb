class ChangeAnswerStringsToInteger < ActiveRecord::Migration
    def self.up 
        change_table :answers do |t|
            t.change :value_s, :integer
        end
    end
    def self.down
        change_table :answers do |t|
            t.change :value_s, :string 
        end

    end
end
