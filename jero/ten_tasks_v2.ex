defmodule TenTasksV2 do
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
    spawn(fn -> task(:do_task) end)
  end


  def task(:do_task) do
    Process.sleep(1000)
    IO.puts("I am done")
  end
end
