require './lib/caesar_cipher.rb'

describe 'caesar_cipher' do
  it 'returns text shifted 10 times down the alphabet' do
    expect(caesar_cipher('hello', 2)).to eql('jgnnq')
  end
  it 'returns text with appropriate word wrap from z to a' do 
    expect(caesar_cipher('test', 10)).to eql('docd')
  end
  it 'returns ciphered text maintaining original spacing and punctuation' do
    expect(caesar_cipher('hello, my name is john.', 5)).to eql('mjqqt, rd sfrj nx otms.')
  end
  it 'returns ciphered text maintaining original letter casing' do
    expect(caesar_cipher('Hello, my name is John.', 5)).to eql('Mjqqt, rd sfrj nx Otms.')
  end

  it 'returns ciphered text, but leaves non-letters alone.' do
    expect(caesar_cipher("It's 2022!", 5)).to eql("Ny'x 2022!")
  end
end