require 'rails_helper'

RSpec.describe Person, type: :class do
    subject(:default_person) { Person.new }

    describe 'initialize' do 
        it 'should return a new instance of Person' do
            expect(default_person).to be_an_instance_of(Person)
        end
    end

    describe 'name' do
        context 'when name is provided' do
            let(:person) { Person.new('test') }
            it 'should return name' do
                expect(person.name).to eq('test')
            end
        end

        context 'when name is not provided' do
            it 'should return no name' do
                expect(default_person.name).to eq('no name')
            end
        end
    end

    describe 'age' do
        context 'when age is provided' do
            let(:person) { Person.new('test', 25) }
            it 'should return age' do
                expect(person.age).to eq(25)
            end
        end

        context 'when age is not provided' do
            it 'should return 0' do
                expect(default_person.age).to eq(0)
            end
        end
    end
end