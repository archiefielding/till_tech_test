require 'till'

describe Till do

  it 'can show an item\'s price' do
    till = Till.new
    expect(till.price('Tea')).to eq(3.65)
  end

  it 'can add an item to the order' do
    till = Till.new
    till.order('Tea')
    expect(till.totalOrder).to include('Tea')
  end

  it 'will add an items price to the total upon ordering' do
    till = Till.new
    till.order('Tea')
    expect(till.totalPrice).to eq(3.65)
  end

end
