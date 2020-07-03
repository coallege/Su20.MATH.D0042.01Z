module coterminal
   include("../shared/pi_units.jl")
   using .pi_units
   function iscoterminal(a, b, fullrotation)::Bool
      return (a % fullrotation) == (b % fullrotation)
   end

   fulldeg = 360

   function iscoterminal_deg(a::Number, b::Number)::Bool
      return iscoterminal(a, b, fulldeg)
   end

   fullrad = TimesPi(2)
   function iscoterminal_rad(a::TimesPi, b::TimesPi)::Bool
      return iscoterminal(a.coefficient, b.coefficient, fullrad.coefficient)
   end

   function iscoterminal_rad(a::Number, b::Number)::Bool
      return iscoterminal(a, b, fullrad.coefficient * pi)
   end

   function list_coterminals(d, n, fullrotation)
      let i = -n
         while i <= n
            println(string(d + i * fulldeg, "°"))
            i += 1
         end
      end

   function list_coterminals_deg(d::Number, n::Integer)
      let i = -n
         while i <= n
            println(string(d + i * fulldeg, "°"))
            i += 1
         end
      end
   end

   function list_coterminals_rad(r::TimesPi, n::Integer)
      
   end

   export iscoterminal_deg
   export iscoterminal_rad
end
