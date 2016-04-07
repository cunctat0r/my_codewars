class String
  def ipv4_address?    
    return false unless self
                      .split('.')
                      .select do |item| 
                        item.to_i > 255 || 
                        item.to_i < 0   || 
                        item =~ /^0.+/  || 
                        item =~ /[^0-9]+/
                       end
                      .empty?
    self =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/ ? true : false
  end
end
