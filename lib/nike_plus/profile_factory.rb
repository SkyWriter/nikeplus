module NikePlus
  
  class ProfileFactory
    
    class << self
      
      def create_from_profile_html(name, html)
        profile_data = extract_baked_data(html)
        Profile.new(name, friends(profile_data), distance_ran(profile_data))
      end
    
    protected
  
      def extract_baked_data(profile_html)
        if /<script>\s*window.np.baked_data\s*=\s*(.*?)\s*;\s*<\/script>/ =~ profile_html
          Yajl::Parser.parse($1, symbolize_keys: true)
        end
      end

      def friends(profile)
        profile[:friendsList][:friends].map { |friend| friend[:name] }  
      end

      def distance_ran(profile)
        profile[:userTotals].each do |total|
          return total[:metrics][:lifetimeTotalDistance] if total[:activityType] == 'running'
        end
        0
      end
    
    end
 
  end
  
  private_constant :ProfileFactory
  
end