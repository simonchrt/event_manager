require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    expect(build(:user)).to be_valid
  end

  it "is invalid without an email" do
    user = build(:user, email: nil)
    expect(user).not_to be_valid
  end

  it "is invalid with a duplicate email" do
    create(:user, email: "test@example.com")
    user = build(:user, email: "test@example.com")
    expect(user).not_to be_valid
  end

  it "is invalid with a fake email" do
    expect(build(:user, email: "toto")).not_to be_valid
  end

  it "is invalid withoud a firstname" do
    user = build(:user, first_name: nil)
    expect(user).not_to be_valid
  end

end
