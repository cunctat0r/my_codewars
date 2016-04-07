def autocomplete(input, dictionary)
  regexp = Regexp.new("^#{input.gsub(/[^a-zA-Z]/, '')}.*")
  dictionary.select { |word| word.downcase =~ regexp}[0, 5]  
end