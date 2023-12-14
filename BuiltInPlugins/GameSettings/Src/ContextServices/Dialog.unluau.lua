-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("DialogProvider")
function var0.new(arg1)
   if typeof(arg1) == "function" then
      local var0 = false
   end
   assert(true, "No showDialog function was provided.")
   local var0 = {}
   var0.showDialog = arg1
   setmetatable(var0, var0)
   return var0
end

return var0
