class Answer < ActiveRecord::Base
    belongs_to :question
    belongs_to :answer_option
    belongs_to :user
    belongs_to :survey

end
