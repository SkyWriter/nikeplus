# private_constant stub for Ruby 1.9.2
class Class
  unless respond_to?(:private_constant)
    def private_constant(arg); end
  end
end

require 'net/http'
require 'yajl'

require_relative "nike_plus/profile_factory"
require_relative "nike_plus/profile"
require_relative "nike_plus/request_processor"
require_relative "nike_plus/session_factory"
require_relative "nike_plus/session"