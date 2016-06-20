require 'menu'
require 'supports/stdout_spy'
require 'supports/stdin_stub'

describe Menu do
  let(:spy){ StdoutSpy.new }
  let(:stub){ StdinStub.new(input) }
  let(:menu){ described_class.new(stub, spy) }

  context '1を選択する場合' do
    context '正常系' do
      let(:input){ '3' }

      it do
        menu.select('1')
        expect(spy.result).to eq('Fizz')
      end
    end

    context '異常系' do
      let(:input){ '0.2' }

      it do
        menu.select('1')
        expect(spy.result).to eq('整数を入力してください')
      end
    end
  end

  context '存在しないメニューを選択する場合' do
    let(:input){ nil }

    it do
      menu.select('100')
      expect(spy.result).to be_nil
    end
  end

  # spyを本番で使うSTDOUTにしてテストした例
  #it do
  #  spy = STDOUT
  #  stub = StdinStub.new('3')
  #  obj = Menu.new(stub, spy)
  #  obj.select('1')
  #end
end
