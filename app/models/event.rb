# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :string
#  description    :text
#  date_start     :datetime
#  date_finish    :datetime
#  total          :integer
#  responsable_id :integer          not null
#  participants   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Event < ApplicationRecord
  belongs_to :responsable
  has_many :reservations
end
