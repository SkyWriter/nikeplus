module NikePlus

  class Profile < Struct.new(:name, :friends, :distance); end
  
  private_constant :Profile
  
end