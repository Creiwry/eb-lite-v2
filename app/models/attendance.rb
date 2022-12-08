# frozen_string_literal: true

class Attendance < ApplicationRecord
  belongs_to :participant, class_name: 'User'
  belongs_to :event
end
