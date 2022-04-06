class Rental
  attr_accessor :date
  attr_reader :animal, :vet

  def initialize(date, book, person)
    @date = date
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end
end
