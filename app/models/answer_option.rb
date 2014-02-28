class AnswerOption < ActiveRecord::Base
    belongs_to :question
    validates_uniqueness_of :value
end
