require 'spec_helper'

describe ScopedStorage::Scope do

  subject{
    ScopedStorage::Scope.new("default")
  }

  it 'works with the default storage' do
    subject['new_value'] = 123
    expect(subject.fetch('new_value')).to eq 123
  end

end