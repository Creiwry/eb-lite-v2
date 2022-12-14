# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: 'administrator_id', class_name: 'Event'
  has_many :attendances, foreign_key: 'participant_id', class_name: 'Attendance'
  has_many :events, through: :attendances, foreign_key: 'participant_id', class_name: 'Attendance'
end
