require 'rspec'

# ¥
# £
# $


def currency_converter amount, location
  case location
  when 'US' then "$%.2f" % amount
  when 'Japan' then "¥%.0f" % amount
  when 'UK' then ("£%.2f" % amount).gsub('.', ',')
  end
end

puts currency_converter 5000, 'US'
puts currency_converter 5000, 'Japan'
puts currency_converter 5000, 'UK'

