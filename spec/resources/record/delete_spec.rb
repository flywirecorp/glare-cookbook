require 'spec_helper'
require 'glare'

RSpec.describe 'glare_test::delete' do
  let(:runner) { ChefSpec::SoloRunner.new(step_into: ['glare_record']) }
  subject { runner.converge(described_recipe) }

  it 'calls glare gem to remove a given record' do
    allow(Glare).to receive(:deregister)

    subject

    expect(Glare).to have_received(:deregister)
      .with('flywire.cc', 'CNAME')
  end
end
