# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'
require 'date'

class Cat < ApplicationRecord 
    include ActionView::Helpers::DateHelper
    validates :birth_date, :color, :name, :sex, :description, presence: true
    COLORS = ['Black', 'White', 'Brown', 'Orange']
    validates :color, inclusion: { in: COLORS}
    validates :sex, length: { maximum:1, too_long: "1 characters is the maximum allowed"}

    def age
        # d = Date.parse(self.birth_date)
        # from_time = Time.now - d.year - d.mon - d.mday
        time_ago_in_words(self.birth_date)          
    end
    
    has_many :cat_rental_requests,
        foreign_key: :cat_id,
        class_name: :CatRentalRequest
end
