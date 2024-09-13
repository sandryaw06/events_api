# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string
#  last_name  :string
#  events_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
