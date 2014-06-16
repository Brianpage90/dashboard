# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  event_date :date
#  event_time :time
#  title      :string(255)
#  body       :string(255)
#  publisher  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Event < ActiveRecord::Base
end
