-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Networking.NetworkingImpl)
local var2 = require(var0.Packages.Framework).ContextServices.ContextItem:extend(script.Name)
function var2.new(...)
   local var0 = {}
   var0.impl = var1.new(...)
   return setmetatable(var0, var2)
end

function var2.get(arg1)
   return arg1.impl
end

return var2
