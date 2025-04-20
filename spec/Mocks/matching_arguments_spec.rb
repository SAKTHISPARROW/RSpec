RSpec.describe 'matching arguments' do
    it 'can return different values depending on the arguments' do
        arr =double
        allow(arr).to receive(:first).with(no_args).and_return(1)
        allow(arr).to receive(:first).with(1).and_return([1])
        allow(arr).to receive(:first).with(2).and_return([1,2])
        allow(arr).to receive(:first).with(be >= 3).and_return([1,2,3])

        expect(arr.first).to eq(1)
        expect(arr.first(1)).to eq([1])
        expect(arr.first(2)).to eq([1,2])
        expect(arr.first(100)).to eq([1,2,3])
    end
end