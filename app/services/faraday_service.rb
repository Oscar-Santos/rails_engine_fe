class FaradayService
  def self.connection(url, query = nil)

    conn = Faraday.new(url: 'http://localhost:3000') do |faraday|
      faraday.params[:query] = query unless query.nil?
    end
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
    
  end
end
