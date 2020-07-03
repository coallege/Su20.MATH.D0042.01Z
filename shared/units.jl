module units
   struct Degrees deg::Number end
   struct TimesPi coefficient::Number end
   struct DivPi dividend::Number end

   import Base.show

   function Base.show(io::IO, d::Degrees)
      print(io, string(d.deg, "°"))
   end
   
   function Base.show(io::IO, xpi::TimesPi)
      print(io, string(xpi.coefficient, "π"))
   end

   function Base.show(io::IO, dpi::DivPi)
      print(io, string(dpi.dividend, " / π"))
   end

   export TimesPi
   export DivPi
end
