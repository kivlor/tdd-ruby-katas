require 'rspec'
require 'stringtemplate'

describe StringTemplate do
  describe '#call' do
    context 'when given a template with one attribute and no matching variables' do
      it 'returns template verbatim' do
        expect(StringTemplate.call('Hello {first_name}')).to eq('Hello {first_name}')
        expect(StringTemplate.call('{first_name} has arrived')).to eq('{first_name} has arrived')
        expect(StringTemplate.call('Today {first_name} is {years} old')).to eq('Today {first_name} is {years} old')
      end
    end

    context 'when given a template with one attribute and a matching variable' do
      it 'returns string from template with attribute replaces' do
        expect(StringTemplate.call('Hello {first_name}', first_name: 'Li Ren')).to eq('Hello Li Ren')
        expect(StringTemplate.call('{first_name} has arrived', first_name: 'Li Ren')).to eq('Li Ren has arrived')
        expect(StringTemplate.call('Today {first_name} is {years} old', first_name: 'Li Ren', years: '28')).to eq('Today Li Ren is 28 old')
      end
    end
  end
end
