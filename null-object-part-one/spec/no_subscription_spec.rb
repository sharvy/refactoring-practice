require 'spec_helper'

describe NoSubscription do
  let(:credit_card) { double("CreditCard") }
  subject(:no_subscription) { described_class.new }

  describe "#charge" do
    it 'does not charge the credit card' do
      expect(credit_card).not_to receive(:charge)
      no_subscription.charge(credit_card)
    end
  end

  describe "#has_mentoring?" do
    it 'returns false' do
      expect(no_subscription.has_mentoring?).to be_falsey
    end
  end

  describe "#price" do
    it 'returns 0' do
      expect(no_subscription.price).to eq(0)
    end
  end
end
