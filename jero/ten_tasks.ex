defmodule TenTasks do
 @moduledoc """
  A task from Mr. Jero to create a function that executes 10 task/0 functions
  which prints "I am done" through IO.puts() 10 times by using spawn and pattern matching.
  purpose:
  - To demonstrate the use of `spawn` to create concurrent tasks.
  - Practice using `pattern matching`


  • send(pid, message) sends a message to a process. / self() returns the PID (process ID) of the current process.
 """

 # ⬇️ main calls task/0
  def main do
     task()
    #  task()
    #  task()
    #  task()
    #  task()
    #  task()
    #  task()
    #  task()
    #  task()
    #  task()
  end

# ⬇️ task function spawns a new process
 def task do
   spawn(fn ->
     send(self(), :go) # ⬅️ sends a message to itself (with send(self(), :go)).
     print_i_am_done() # ⬅️ calls print_i_am_done/0.
   end)
 end

 defp print_i_am_done do
   receive do
     :go -> IO.puts("I am done")
   end
 end
end
