# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  admin_id   :integer
#  event_date :date
#  event_time :time
#  title      :string(255)
#  body       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
