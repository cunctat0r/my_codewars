class Calc

  OPERATIONS = {
    plus: '.+',
    minus: '.-',
    times: '.*',
    divided_by: './'
  }.freeze

  DIGITS = {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    zero: 0
    }.freeze

  def initialize    
    @command = ''    
    self
  end

  def method_missing(name)    
    item = name.id2name.to_sym    
    @command += OPERATIONS[item]  if OPERATIONS[item]
    @command += DIGITS[item].to_s if DIGITS[item]    
    return eval(@command) if @command =~ /^\d.*\d$/
    self
  end
end
