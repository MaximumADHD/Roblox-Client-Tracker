-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Controllers.WorldRootPhysicsController)
local var1 = require(script.Parent.Parent.Parent.Parent.Packages.Framework).ContextServices.ContextItem:extend(script.Name)
function var1.new(...)
   local var0 = {}
   var0.impl = var0.new(...)
   setmetatable(var0, var1)
   return var0
end

function var1.get(arg1)
   return arg1.impl
end

return var1
