require 'rspec'


class Hash
  def param_converter
    self.map { |i| i * "=" } * "&"
  end
end

hash = { :topic => "baseball", :team => "astros" }

p hash.param_converter