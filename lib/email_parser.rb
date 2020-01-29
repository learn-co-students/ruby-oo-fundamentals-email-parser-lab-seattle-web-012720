# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end

    # attr_accessor :emails
   
    def parse
        @parsed_email = @emails.split(/[\s,]/).reject{|email| email.empty?}.uniq
    end

end