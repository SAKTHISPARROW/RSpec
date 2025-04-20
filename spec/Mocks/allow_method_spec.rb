RSpec.describe 'allow method review' do
    it 'can customize the return value for methods on double' do
        calculator = double
        allow(calculator).to receive(:add).and_return(15)

        expect(calculator.add).to eq(15)
        expect(calculator.add(3)).to eq(15)
        expect(calculator.add(-1,-2,-4)).to eq(15)
        expect(calculator.add("hello")).to eq(15)
    end

    it 'can stub one or more method on the real object' do
        arr = [1,2,3]
        allow(arr).to receive(:sum).and_return(15)

        expect(arr.sum).to eq(15)
        arr.push(4)
        expect(arr).to eq([1,2,3,4])
    end

    it 'can return multiple return values in sequence' do
        mock_array = double
        allow(mock_array).to receive(:pop).and_return(:c,:b,:a,nil)

        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to eq(:a)
        expect(mock_array.pop).to be_nil
        
    end
end