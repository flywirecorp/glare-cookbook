require 'spec_helper'
require 'glare'

RSpec.describe 'glare_test::create' do
  let(:runner) { ChefSpec::SoloRunner.new(step_into: ['glare_record']) }
  subject { runner.converge(described_recipe) }

  it 'calls glare gem to register a given record' do
    allow(Glare).to receive(:register)

    subject

    expect(Glare).to have_received(:register).
      with('flywire.cc', 'flywire.com', 'CNAME')
  end
end
