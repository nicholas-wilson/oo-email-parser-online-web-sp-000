# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(addresses)
    @email_addresses = []
    addresses_with_commas = addresses.split(' ')
    addresses_with_commas.each do |word|
      if word == addresses_with_commas.last
        @email_addresses << word
      else
        @email_addresses << word.slice(0, (word.last - 1))
      end
    end
  end

  def parse
    @email_addresses
  end
end
