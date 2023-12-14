-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.DraggerFramework.Utility.Signal)
local var1 = {}
var1.__index = var1
function var1.new(arg1, arg2)
   local var13 = {}
   local var14 = {}
   local var15 = {}
   var15.transform = arg1
   var15.size = arg2
   var14.Region = var15
   var13._region = var14
   var13._signal = var0.new()
   local var2 = setmetatable(var13, var1)
   var2.SelectionChanged = var2._signal
   return var2
end

function var1.SetRegion(arg1, arg2)
   arg1._region.Region = arg2
end

function var1.SetRegionWaypoint(arg1, arg2)
   arg1._region.Region = arg2
   arg1._signal:Fire()
end

function var1.Set(arg1)
end

function var1.Get(arg1)
   return { arg1._region }
end

return var1
