class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def create_rental(date, person)
    Rental.new(date, self, person)
  end
end
