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


class Announcement < ActiveRecord::Base
  before_save :set_default_dates
  belongs_to :admin

  DEFAULT_DURATION = 60*60*24*7*2 #two weeks

  default_scope ->{includes(:admin)}
  scope :unexpired, ->{where("expire_on >= ?", Date.today)}
  scope :published, ->{where("publish_on <= ?", Date.today)}
  scope :for_display, ->{unexpired.published}
  validate :title, presence: true
  validate :body, presence: true
  validate :admin_id, presence: true

  def publisher
    admin.email
  end

  def set_default_dates
    publish_on ||= Date.today
    expire_on  ||= publish_on + DEFAULT_DURATION
  end
end
