module NikePlus

  class Session
  
    def initialize(request_processor)
      @request_processor = request_processor
    end
  
    def get_profile(name)
      ProfileFactory.create_from_profile_html(name, @request_processor.get("/plus/profile/#{name}/"))
    end

  end

  private_constant :Session
  
end

