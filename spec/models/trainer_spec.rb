require 'rails_helper'

RSpec.describe Trainer, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
  it { is_expected.to validate_presence_of(:age) }
  it { is_expected.to validate_presence_of(:gender) }
end
