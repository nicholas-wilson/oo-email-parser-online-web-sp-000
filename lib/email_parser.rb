# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(addresses)
    @email_addresses = addresses.split(' ')
  end

  def parse
    @email_addresses
  end
end
