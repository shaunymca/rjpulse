class Question < ActiveRecord::Base
    belongs_to :survey
    belongs_to :answer_type
    has_many :answers
    has_many :answer_options, :dependent => :destroy

    accepts_nested_attributes_for :answer_options

    def question_options_input
        @question_options_input || self.answer_options.join(',')
    end

    def save_question_options_input
        answer_options_list = self.question_options_input.split(",")
        answer_options_list.each do |ao|
            answer_option.create(:question_id => id, :value => ao)
        end
    end


    def question_options_input
      answer_options.map(&:value).join(', ')
  end

  def question_options_input=(answers)
      split = answers.split(', ')
      split.each do |option|
        unless self.answer_options.map(&:value).include?(option)
        self.answer_options.build(:question_id => id, :value => option)
    end
    end
  end
end
