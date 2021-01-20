class Todo < ActiveRecord::Base
  def to_pleasant_string
    is_completed = completed ? "[X]" : "[ ]"
    "#{id}. #{due_date.to_s(:long)} #{todo_text} #{is_completed}"
  end

  def self.add_task(todo)
    create!(todo_text: todo[:todo_text], due_date: Date.today + todo[:due_in_days], completed: false)
  end

  def self.mark_as_complete!(todo_id)
    update(todo_id, completed: true)
  end

  def due_today?
    due_date == Date.today
  end

  def self.overdue
    where("due_date < ?", Date.today)
  end

  def self.due_today
    where("due_date = ?", Date.today)
  end

  def self.due_later
    where("due_date > ?", Date.today)
  end

  def self.completed
    where(completed: true)
  end

  def self.not_completed
    where(completed: false)
  end
end
