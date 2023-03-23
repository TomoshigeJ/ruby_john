class Todo
  attr_accessor :id, :description, :completed
  
  def initialize(id, description)
    @id = id
    @description = description
    @completed = false
  end

  def complete
    @completed = true
  end

  def complete_string
    if @completed
      "完了!!"
    else
      "未完了.."
    end
  end

  def to_string
    "#{@id}: #{@description} #{completed ? '完了!!' : '未完了'}"  
  end

end

# インスタンスの作成
todo = Todo.new(1, "runteq")
dog = Todo.new(2, "犬の散歩に行く")
rabbit = Todo.new(3, "ぴょーん")

todo.complete
rabbit.complete

p todo
p todo.to_string

p dog
p dog.to_string

p rabbit
p rabbit.to_string
