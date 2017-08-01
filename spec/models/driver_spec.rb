require 'rails_helper'

RSpec.describe Driver, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:phone) }
    it { is_expected.to validate_presence_of(:password_digest) }
  end
end

RSpec.describe Driver, "associations", type: :model do
  it { should have_many(:orders) }
  it { should have_many(:parkers).through(:orders) }
end
