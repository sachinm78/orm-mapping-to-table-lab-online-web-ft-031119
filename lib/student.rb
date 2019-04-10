class Student
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  attr_accessor :name, :grage
  attr_reader :id
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end
  
  
end
