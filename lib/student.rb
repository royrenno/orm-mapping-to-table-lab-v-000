class Student
  attr_accessor :name,:grade, :id

  def initialize(name,grade,id=nil)
  @id = id
  @name = name
  @grade = grade
  end

  def self.create_table
    sql= <<-SQL
    CREATE TABLE IF NOT EXITS students(
    id INTERGER PRIMARY KEYm
    name TEXT
    grade TEXT
    )
    SQL
    DB[:conn].excute(sql)
  end
  

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
