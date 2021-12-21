defmodule TodoTestWeb.TodoLive do
  use TodoTestWeb, :live_view
  alias TodoTest.Todos


  def mount(_params, _session, socket) do
    Todos.subscribe()

  {:ok, fetch(socket)}
end

def handle_info({Todos, [:todo | _], _}, socket) do
  {:noreply, fetch(socket)}
end


def handle_event("add", %{"todo" => todo}, socket) do
  Todos.create_todo(todo)

  {:noreply, (socket)}
end

def handle_event("toggle_done", %{"id" => id}, socket) do
	todo = Todos.get_todo!(id)
	Todos.update_todo(todo, %{done: !todo.done})
	{:noreply, fetch(socket)}

end

defp fetch(socket) do
  assign(socket, todos: Todos.list_todos())

end

end 