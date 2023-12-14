-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TerrainEditor").Packages.DraggerFramework.Utility.Signal)
local var1 = {}
var1.__index = var1
function var1.new(arg1)
   local var12 = {}
   local var13 = {}
   var13.Transform = arg1
   var12._transform = var13
   local var2 = setmetatable(var12, var1)
   var2.SelectionChanged = var0.new()
   return var2
end

function var1.SetTransform(arg1, arg2)
   arg1._transform.Transform = arg2
end

function var1.SetTransformSignal(arg1, arg2)
   arg1:SetTransform(arg2)
   arg1.SelectionChanged:Fire()
end

function var1.Set(arg1)
end

function var1.Get(arg1)
   return { arg1._transform }
end

return var1
