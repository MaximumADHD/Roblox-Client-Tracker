-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("Navigation")
function var0.new(arg1)
   local var0 = {}
   var0.navigation = arg1
   setmetatable(var0, var0)
   return var0
end

function var0.get(arg1)
   return arg1.navigation
end

return var0
