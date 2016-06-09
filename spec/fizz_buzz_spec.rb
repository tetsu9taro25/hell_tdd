require 'fizz_buzz'

describe FizzBuzz do
  describe '#result' do
    context '3の倍数の場合' do
      it { expect(described_class.new(3).result).to eq('Fizz') }

      it { expect(described_class.new(6).result).to eq('Fizz') }
    end

    context '5の倍数の場合' do
      it { expect(described_class.new(5).result).to eq('Buzz') }

      it { expect(described_class.new(25).result).to eq('Buzz') }
    end

    context '15の倍数の場合' do
      it { expect(described_class.new(15).result).to eq('FizzBuzz') }

      it { expect(described_class.new(45).result).to eq('FizzBuzz') }
    end

    context 'その他の数の場合' do
      it { expect(described_class.new(2).result).to eq('2') }

      it { expect(described_class.new(7).result).to eq('7') }
    end

    context '全ての倍数になる数の場合' do
      it { expect(described_class.new(0).result).to eq('0') }
    end
  end
end
