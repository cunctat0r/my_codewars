def domain_name(url)
  url.split('/').select { |item| item =~ /\./ }[0].split('.')[-2] || nil
end