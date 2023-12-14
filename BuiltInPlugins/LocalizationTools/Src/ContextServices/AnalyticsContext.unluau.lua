-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend("Analytics")
function var0.new(arg1)
   assert(arg1, "Analytics.new expects analyticsImpl.")
   local var0 = {}
   var0.analyticsImpl = arg1
   setmetatable(var0, var0)
   return var0
end

function var0.get(arg1)
   return arg1.analyticsImpl
end

return var0
