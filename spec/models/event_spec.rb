require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is valid with valid attributes" do
    expect(build(:user)).to be_valid
  end
end
