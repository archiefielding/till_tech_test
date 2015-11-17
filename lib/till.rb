require 'json'

class Till

  attr_reader :data, :totalOrder, :totalPrice

  def initialize
    @json_data = File.read('hipstercoffee.json')
    @data = JSON.parse(@json_data)
    @totalOrder = []
    @totalPrice = 0
  end

  def price(item)
    self.data[0]['prices'][0][item]
  end

  def order(item)
    @totalOrder.push(item)
    @totalPrice += self.price(item)
  end

end
