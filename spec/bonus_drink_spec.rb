require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  subject { BonusDrink.total_count_for(buy) }

  context 'Buy 0' do
    let(:buy) { 0 }
    specify { is_expected.to eq 0 }
  end

  context 'Buy 1' do
    let(:buy) { 1 }
    specify { is_expected.to eq 1 }
  end

  context 'Buy 4' do
    let(:buy) { 3 }
    specify { is_expected.to eq 4 }
  end

  context 'Buy 11' do
    let(:buy) { 11 }
    specify { is_expected.to eq 16 }
  end

  context 'Buy 100' do
    let(:buy) { 100 }
    specify { is_expected.to eq 149 }
  end
end