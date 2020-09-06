# acronym.rb
#
# Hyphens made this one a little interesting. At first I had an extra map+flatten to split a second
# time on hyphens, but I didn't love that solution. This is a little more elegant I think, because
# the tests want us to treat hyphens as spaces essentially. Simply swapping hyphens out for a space
# was easy enough and let the subseqeunt split do all the work I needed.
#
# From there, we know we need the first characters of each word. I didn't find an easy way to grab
# the first character from a string with this syntax (you could use map+slice, but I was hoping to
# use the &:sym format for the maps), so I ended up using chars+first.
#
# I later found out about String#chr, which replaces chars+first nicely, so I update to that.

class Acronym

  def self.abbreviate(phrase)
    phrase.sub('-', ' ').split(' ').map(&:chr).join.upcase
  end

end
