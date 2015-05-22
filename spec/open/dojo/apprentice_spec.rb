require 'spec_helper'

describe Open::Dojo::Apprentice do
  let(:apprentice) { create :apprentice }

  describe 'young apprentice' do
    let(:apprentice) { build :apprentice }

    it 'has 1 dan' do
      expect(apprentice.rank).to eq(1)
    end
  end

  describe 'ranking' do
    it "manimum kyu is 30" do
      expect(build :apprentice, rank: 31).not_to be_valid
    end

    it "maximum kyu is 1" do
      expect(build :apprentice, rank: 0).not_to be_valid
    end

    context 'when lesson is completted' do
      let!(:apprentice) { create :apprentice }

      it 'get next kyu descending'
    end
  end

  describe '#get_all_uncompleted_lessons'
end
