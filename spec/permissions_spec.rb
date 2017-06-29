require 'permissions'

describe Permissions do
  it 'should have focus' do
    expect(Permissions::FOCUS).to eq "FOCUS"
  end

  it 'should have coordinator' do
    expect(Permissions::ADMIN).to eq "ADMIN"
  end

  it 'should have helper' do
    expect(Permissions::HELPER).to eq "HELPER"
  end
end
