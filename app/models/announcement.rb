# == Schema Information
#
# Table name: announcements
#
#  id            :integer          not null, primary key
#  publish_on    :date
#  expire_on     :date
#  critical_flag :boolean
#  body          :text
#  title         :string(255)
#  publisher     :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Announcement < ActiveRecord::Base
end
