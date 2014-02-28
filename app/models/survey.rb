class Survey < ActiveRecord::Base
    belongs_to :user
    has_many :questions, :dependent => :destroy
    has_many :answer_options, :through => :questions
    has_many :answers, :through => :questions, :dependent => :destroy

    accepts_nested_attributes_for :questions, :allow_destroy => true
    accepts_nested_attributes_for :answer_options, :allow_destroy => true
    accepts_nested_attributes_for :answers

    def user_count
        self.questions.first.user_count
    end

end
