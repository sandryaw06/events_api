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
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Event < ApplicationRecord
  belongs_to :responsable
  has_many :reservations


  validates :name, presence: true, length: {minimum:3, maximum:10}
  validates :valid_end_date


  def availability
    self.total - self.reservations.count
  end

  def valid_end_date
    if self.date_finish <= self.date_start
      errors.add(:date_finish, "debe ser posterior a la fecha de inicio")
    end
  end
  

end
