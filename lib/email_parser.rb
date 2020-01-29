require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
       @email_string = emails
    end

    def parse
        @parsed_string = @email_string.split(/[\s,]/)
        @parsed_string.reject{|email| email.empty?}.uniq
    end
# binding.pry
end

