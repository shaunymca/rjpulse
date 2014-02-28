class Survey < ActiveRecord::Base
    belongs_to :user
    has_many :questions, :dependent => :destroy
    has_many :answer_options, :through => :questions

    accepts_nested_attributes_for :questions, :allow_destroy => true
    accepts_nested_attributes_for :answer_options, :allow_destroy => true



end
