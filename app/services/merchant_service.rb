class MerchantService < FaradayService
  def self.get_merchants
    connection('/api/v1/merchants')
  end
end
