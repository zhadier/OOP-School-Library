class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(id, age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    @parent_permission || of_age?
  end

  private

  def of_age?
    @age >= 18
  end
end
