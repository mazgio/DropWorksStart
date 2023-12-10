class OpeningHour < ApplicationRecord
  belongs_to :venue
  validates :venue, presence: true
  validates :day, presence: true
  validates :open_time, presence: true
  validates :closing_time, presence: true

  enum day: { monday: 0, tuesday: 1, wednesday: 2, thursday: 3, friday: 4, saturday: 5, sunday: 6 }

  def day_name
    I18n.t("date.day_names")[day.to_i]
  end
end
