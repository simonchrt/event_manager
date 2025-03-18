require 'rails_helper'

RSpec.describe Registration, type: :model do
  it "is valid with valid attributes" do
    expect(build(:registration)).to be_valid
  end

  it "is invalid with an incorrect status" do
    registration = build(:registration, status: "invalid_status")
    expect(registration).not_to be_valid
  end
end
