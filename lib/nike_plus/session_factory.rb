module NikePlus
  
  class SessionFactory
    class << self
      
      def create(login, password)
        cookies = authenticate_http_request(login, password)
        return nil if cookies.nil? || cookies.include?('llCheck=N')
        Session.new RequestProcessor.new(cookies)
      end

    protected

      def authenticate_http_request(login, password)
        http = Net::HTTP.new("www.nike.com", 443)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_PEER

        req = Net::HTTP::Post.new('/profile/login')
        req.form_data = { login: login, password: password }
        res = http.request(req)
        res.get_fields('set-cookie').map { |item| item.split('; ')[0] }
      end

    end
  end
  
end