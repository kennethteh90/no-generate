require 'rails_helper'

RSpec.describe Bookmark, type: :model do

  it { is_expected.to validate_presence_of(:page) }
  it { is_expected.to validate_presence_of(:description) }

end
