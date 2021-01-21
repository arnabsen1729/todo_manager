class TodosController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    @todos = @current_user.todos
    # render plain: Todo.order(:due_date).map { |todo| todo.to_pleasant_string }.join("\n")
    render "index"
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
      user_id: current_user.id,
    )
    redirect_to todos_path
  end

  def update
    id = params[:id]
    completed = params[:completed]
    @current_user.todos.update(id, completed: completed)
    redirect_to todos_path
  end

  def destroy
    id = params[:id]
    @current_user.todos.destroy(id)
    redirect_to todos_path
  end
end
