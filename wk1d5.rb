require 'rspec'
require 'date'

years = (1900..1999).to_a
leap_years = []

years.each do |year|
  current_year = Date.new(year)
  leap_years << year if current_year.leap?
end

p leap_years