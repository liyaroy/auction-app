require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  subject { described_class.new(email: 'abc@example.com', password: 'password') }

  describe "validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
