# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(emails)
        @email_addresses = emails 
    end 

 
    def parse 
        @parsed_string = @email_addresses.split(/[\s,]/)
        @noEmptyStrings = @parsed_string.reject { |s| s.empty?}
        @uniqueEmails = @noEmptyStrings.uniq

    end 
   
end 