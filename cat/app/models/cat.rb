require 'action_view'
require 'date'

class Cat < ApplicationRecord 
    validates :birth_date, :color, :name, :sex, :description, presence: true
    COLORS = ['Black', 'White', 'Brown', 'Orange']
    validates :color, inclusion: { in: COLORS}
    validates :sex, length: { maximum:1, too_long: "1 characters is the maximum allowed"}

    def age
        d = Date.parse(self.birth_date)
        from_time = Time.now - d.year - d.mon - d.mday
        time_ago_in_words(from_time)          
    end





end