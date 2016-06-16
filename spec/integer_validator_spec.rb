require 'integer_validator'
describe IntegerValidator do
  it do
    obj = IntegerValidator.new('0.2')
    expect(obj.valid?).to be_falsy
  end
end
