require 'rspec'
require_relative '../palindrome'
require_relative 'spec_helper'

RSpec.describe '#palindrome?' do
  context 'при паліндромах' do
    it 'повертає true для паліндромів' do
      expect(palindrome?('А роза упала на лапу Азора')).to be true
      expect(palindrome?('Madam')).to be true
      expect(palindrome?('Able was I ere I saw Elba')).to be true
    end
  end

  context 'при не-паліндромах' do
    it 'повертає false для не-паліндромів' do
      expect(palindrome?('Hello')).to be false
      expect(palindrome?('World')).to be false
      expect(palindrome?('Goodbye')).to be false
    end
  end

  context 'на краю вхідних даних' do
    it 'повертає true для порожнього рядка' do
      expect(palindrome?('')).to be true
    end

    it 'повертає true для однобуквеного рядка' do
      expect(palindrome?('A')).to be true
      expect(palindrome?('b')).to be true
    end

    it 'ігнорує пробіли та знаки пунктуації' do
      expect(palindrome?('A man, a plan, a canal, Panama')).to be true
      expect(palindrome?('No lemon, no melon')).to be true
    end

    it 'ігнорує регістр' do
      expect(palindrome?('Racecar')).to be true
      expect(palindrome?('Was it a car or a cat I saw?')).to be true
    end
  end
end
