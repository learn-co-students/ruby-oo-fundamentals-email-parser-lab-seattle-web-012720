# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser
    def initialize(email_string)
        @email_split = email_string.split(',')

    end
    
    def parse= (email_string)
        @email_string = email_string.split(',')
    end

    def parse
        @array = []
        @email_split.each {|address|
            if !address.include?(' ')
                @array << address
            else
                @split_at_space = address.split(' ')
                @split_at_space.each {|sub_array_entry|
                    if !@array.include?(sub_array_entry)
                        @array << sub_array_entry
                    end
                }
            end
        }
        @array
    end
end

