require 'rails_helper'

RSpec.describe User, type: :model do
  include ActiveSupport::Testing::TimeHelpers

  it 'get current time' do
    pp Time.current # => Sun, 05 Jan 2025 12:08:42.133861000 UTC +00:00
    travel_to Time.zone.local(2025, 1, 1, 0, 0, 0) do
      pp Time.current # => Wed, 01 Jan 2025 00:00:00.000000000 UTC +00:00
      expect(Time.current).to eq Time.zone.local(2025, 1, 1, 0, 0, 0)
    end
  end
end
