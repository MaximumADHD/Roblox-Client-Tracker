-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.named(arg1)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "Symbols must be created using a string name!")
   local var0 = newproxy(true)
   local var1 = `Symbol(%s)`
   function getmetatable(var0).__tostring()
      return var1
   end
   
   return var0
end

function var0.unnamed()
   local var0 = newproxy(true)
   function getmetatable(var0).__tostring()
      return "Unnamed Symbol"
   end
   
   return var0
end

return var0
