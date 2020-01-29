# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emailstring)
       @emailstring = emailstring
    end
    def parse
        @parsed_string = @emailstring.split(/[\s,]/)
        @parsed_string.reject{ |email| email.empty? }.uniq
    end
end