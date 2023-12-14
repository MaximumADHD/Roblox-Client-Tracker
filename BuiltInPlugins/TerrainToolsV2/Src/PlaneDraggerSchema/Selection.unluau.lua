-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.DraggerFramework.Utility.Signal)
local var1 = {}
var1.__index = var1
function var1.new(arg1)
   local var12 = {}
   var12._CursorGrid = arg1
   local var1 = setmetatable(var12, var1)
   var1.SelectionChanged = var0.new()
   return var1
end

function var1.Set(arg1, arg2, arg3)
end

function var1.Get(arg1)
   return { arg1._CursorGrid }
end

return var1
