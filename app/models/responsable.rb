# == Schema Information
#
# Table name: responsables
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Responsable < Person
  has_many :events
end
