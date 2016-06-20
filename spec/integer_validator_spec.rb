require 'integer_validator'
describe IntegerValidator do
  it do
    obj = IntegerValidator.new('0')
    expect(obj.valid?).to be_truthy
  end

  it do
    obj = IntegerValidator.new('1')
    expect(obj.valid?).to be_truthy
  end

  it do
    obj = IntegerValidator.new('123')
    expect(obj.valid?).to be_truthy
  end

  it do
    obj = IntegerValidator.new('0.2')
    expect(obj.valid?).to be_falsy
  end

  it do
    obj = IntegerValidator.new('a')
    expect(obj.valid?).to be_falsy
  end
end
