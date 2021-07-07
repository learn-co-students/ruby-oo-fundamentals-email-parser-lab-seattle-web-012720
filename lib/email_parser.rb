# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(email_string)
    @email_string = email_string
  end
  def parse
    @temp_array = @email_string.split
    @temp_string = @temp_array.join(',')
    @temp_final = @temp_string.split(',')
    @temp_final.delete('')
    return @temp_final.uniq
  end
end