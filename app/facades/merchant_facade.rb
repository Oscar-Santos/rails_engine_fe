class MerchantFacade
  def self.merchants_info
    MerchantService.get_merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

end
