# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails
    def initialize(emails)
        @emails = emails
    end

    def parse
        individual_email = emails.split(' ')
        individual_email = individual_email.collect {|each| each.delete(',')}.uniq
    end
end