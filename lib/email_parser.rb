class EmailAddressParser
    def initialize(emails)
      @email_address = emails
    end
  
    # attr_accessor :email_addresses
  
    def parse
      array = @email_address.split(/\s|, |,/)
      array = array.uniq
      return array
    end
  end