module NikePlus
  
protected

  class RequestProcessor
  
    def initialize(cookies)
      @cookies = cookies
      @http = Net::HTTP.new("nikeplus.nike.com", 80)
    end
  
    def get(path)
      req = Net::HTTP::Get.new(path)
      @cookies.each do |cookie|
        req['Cookie'] = cookie
      end

      res = @http.request(req)
      res.body
    end
  
  end
  
  private_constant :RequestProcessor
  
end
