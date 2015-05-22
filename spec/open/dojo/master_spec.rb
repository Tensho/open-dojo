require 'spec_helper'

describe Open::Dojo::Master do
  describe 'young master' do
    let(:master) { build :master }

    it 'has 1 dan' do
      expect(master.rank).to eq(1)
    end
  end

  describe 'assignee' do
    let!(:apprentices) { create_list :apprentice, 3 }
    let!(:master) { create :master, apprentices: apprentices }

    it "can't have more than 3 apprentices" do
      expect do
        master.apprentices << create(:apprentice)
        master.save!
      end.to raise_error(ActiveRecord::RecordInvalid, "Master can't have more than 3 apprentices")
    end
  end

  describe 'ranking' do
    it "manimum dan is 1" do
      expect { create :master, rank: 0 }.to raise_error('abc')
    end

    it "maximum dan is 9" do
      expect { create :master, rank: 10 }.to raise_error('abc')
    end

    context 'every 5 years' do
      let!(:master) { create :master }

      it 'get next dan ascending' do
        expect { master.increment(:age, 5); master.save }.to change{ master.rank }.by(1)
      end
    end
  end
end
