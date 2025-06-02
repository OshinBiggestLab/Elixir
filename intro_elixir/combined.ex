defmodule Combined do
#  FROM ⬇️
#  def height_to_mph(meters) do
#  Convert.mps_to_mph(Drop.fall_velocity(meters))
#  end

#  TO ⬇️
 def height_to_mph(meters) do
 Drop.fall_velocity(meters) |> Convert.mps_to_mph
 end
end
