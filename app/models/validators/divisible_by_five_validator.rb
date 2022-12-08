# frozen_string_literal: true

# DivisibleByFive custom validator
class DivisibleByFive < ActiveModel::Validator
  def validate(record)
    return if (record.duration % 5).zero?

    record.errors.add :zero, (options[:message] || 'has to be divisible by 5')
  end
end
