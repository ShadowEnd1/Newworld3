# Block requests from 1.2.3.4
Rack::Attack.blacklist('block 1.2.3.4') do |req|
  # Requests are blocked if the return value is truthy
  '1.2.3.4' == req.ip
end
