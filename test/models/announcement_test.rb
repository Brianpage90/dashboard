# == Schema Information
#
# Table name: announcements
#
#  id            :integer          not null, primary key
#  admin_id      :integer
#  publish_on    :date
#  expire_on     :date
#  critical_flag :boolean
#  body          :text
#  title         :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
