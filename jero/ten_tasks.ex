defmodule TenTasks do
 @moduledoc """
  A task from Mr. Jero to create a function that executes 10 task/0 functions
  which prints "I am done" through IO.puts() 10 times by using spawn and pattern matching.
  purpose:
  - To demonstrate the use of `spawn` to create concurrent tasks.
  - Practice using `pattern matching`
 """

 # ⬇️ 10 tasks inside main/0
  def main do
     task()
     task()
     task()
     task()
     task()
     task()
     task()
     task()
     task()
     task()
  end

 def task do
   spawn(fn ->
     send(self(), :go)
     execute_task()
   end)
 end

 defp execute_task do
   receive do
     :go -> IO.puts("I am done")
   end
 end
end
