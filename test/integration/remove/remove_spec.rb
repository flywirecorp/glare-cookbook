describe 'deletes record' do
  it 'deletes it' do
    require 'glare'
    destination = Glare.resolve('flywire.cc', 'CNAME')
    expect(destination).to eq([])
  end
end
