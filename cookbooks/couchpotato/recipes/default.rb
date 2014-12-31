def default_value(val, default)
  if val.nil?
    return default
  end
  if val === 'true'
    return true
  elsif val === 'false'
    return false
  elsif val.is_a? Numeric
    return BigDecimal.new(val).to_i
  else
    return val
  end
end

def str_to_arr(input)
  input = default_value(input, [])
  if input === []
    return input
  end
  return input.split(',')
end

def generatePassword() 
  return rand(36**10).to_s(36)
end

directory "/storage" do
  owner 'couchpotato'
  group 'couchpotato'
  action :create
end
