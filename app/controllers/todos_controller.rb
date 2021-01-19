class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: Todo.order(:due_date).map { |todo| todo.to_pleasant_string }.join("\n")
  end

  def show
    id = params[:id]
    render plain: Todo.find(id).to_pleasant_string
  end

  def create
    todo_text = params[:todo_text]
    due_date = DateTime.parse(params[:due_date])
    new_todo = Todo.create!(
      todo_text: todo_text,
      due_date: due_date,
      completed: false,
    )
    render plain: "Hey your new todo was created with id #{new_todo.id}"
  end
end
