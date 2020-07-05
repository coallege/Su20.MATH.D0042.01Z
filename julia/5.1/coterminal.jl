module coterminal
   include("../shared/units.jl")
   using .units

   iscoterminal(a, b, fullrotation)::Bool = (a % fullrotation) == (b % fullrotation)

   fulldeg = Degrees(360)

   iscoterminal_deg(a::Degrees, b::Degrees)::Bool = iscoterminal(a.deg, b.deg, fulldeg.deg)

   fullrad = TimesPi(2)
   iscoterminal_rad(a::TimesPi, b::TimesPi)::Bool = iscoterminal(a.coefficient, b.coefficient, fullrad.coefficient)

   iscoterminal_rad(a::Number, b::Number)::Bool = iscoterminal(a, b, fullrad.coefficient * pi)

   function list_coterminals(d, n, fullrotation)
      let i = -n
         while i <= n
            println(string(d + i * fullrotation))
            i += 1
         end
      end

   function list_coterminals_deg(d::Degrees, n::Integer)
      list_coterminals(d)
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
