# etl.rb
#
# I wanted to find a way to use Hash#invert, but I'm not sure it's possible. Again Enumerable#map
# is just amazing. This creates an array of one-element hashes that are inverted from the old
# format and merges them at the end.

class ETL
  def self.transform(old)
    transformed = old.map do |k,vs|
      vs.map {|v| Hash[v.downcase, k]}
    end.flatten

    transformed.first.merge(*transformed[1..])
  end
end
