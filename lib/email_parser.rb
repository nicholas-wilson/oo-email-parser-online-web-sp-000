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
    parsed_set = []
    current_address = ""
    @email_addresses.each do |address|
      if address.end_with?(",")
        current_address = address.slice(0, (address.length - 1))
      else
        current_address = address
      end
      if !parsed_set.include?(current_address)
        parsed_set << current_address
      end
    end
    @email_addresses = parsed_set
  end
end
