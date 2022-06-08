require 'rspec'
require 'stringtemplate'

describe StringTemplate do
  describe '#call' do
    context 'when given a template with one attribute and no matching variables' do
      it 'returns template verbatim' do
        expect(StringTemplate.call('Hello {first_name}')).to eq('Hello {first_name}')
      end
    end

    context 'when given a template with two attributes and no matching variables' do
      it 'returns template verbatim' do
        expect(StringTemplate.call('Today {first_name} is {years} old')).to eq('Today {first_name} is {years} old')
      end
    end

    context 'when given a template with one attribute and a matching variable' do
      it 'returns string from template with the attribute replaced' do
        expect(StringTemplate.call('Hello {first_name}', first_name: 'Li Ren')).to eq('Hello Li Ren')
      end
    end

    context 'when given a template with two attributes and matching variables' do
      it 'returns string from template with the attributes replaced' do
        expect(StringTemplate.call('Today {first_name} is {years} old')).to eq('Today {first_name} is {years} old')
      end
    end
  end
end
