module e

struct TimesPi coefficient::Number end

struct DivPi dividend::Number end 

"deg::Number -> rad::DivPi"
function deg2rad_pi(d::Number)::DivPi
   return DivPi(d / 180)
end

"deg::Number -> rad::Number"
function deg2rad_dec(d::Number)::Number
   theta_rad = deg2rad_pi(d).dividend * pi
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

end
