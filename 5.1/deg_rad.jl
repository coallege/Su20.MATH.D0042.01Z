module deg_rad
   include("../shared/pi_units.jl")
   using .pi_units
   "deg::Number -> rad::DivPi"
   function deg2rad_divpi(d::Number)::DivPi
      return DivPi(d / 180)
   end

   "deg::Number -> rad::Number"
   function deg2rad(d::Number)::Number
      theta_rad = deg2rad_divpi(d).dividend * pi
      return theta_rad
   end

   "rad::TimesPi -> deg::Number"
   function rad2deg(r::TimesPi)::Number
      return 180 * r
   end

   function rad2deg(r::Number)::Number
      times_pi = TimesPi(r / pi)
      return rad2deg(times_pi)
   end

   export deg2rad_divpi
   export deg2rad
   export rad2deg
end
