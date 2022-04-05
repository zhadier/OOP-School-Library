require_relative 'person'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

person = Person.new(1, 22, 'maximilianus')
person.correct_name
capitalizedperson = CapitalizeDecorator.new(person)
puts capitalizedperson.correct_name
capitalizedtrimmedperson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedtrimmedperson.correct_name
