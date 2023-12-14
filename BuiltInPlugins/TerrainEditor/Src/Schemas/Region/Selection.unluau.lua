-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.DraggerFramework.Utility.Signal)
local var2 = require(var0.Src.Types)
local var3 = {}
var3.__index = var3
function var3.new(arg1, arg2)
   local var17 = {}
   local var18 = {}
   local var2 = {}
   var2.transform = arg1
   var2.size = arg2
   var18.Region = var2
   var17._region = var18
   local var3 = setmetatable(var17, var3)
   var3.SelectionChanged = var1.new()
   return var3
end

function var3.SetRegion(arg1, arg2)
   local var0 = {}
   var0.size = arg2.Size
   var0.transform = arg2.Transform
   arg1._region.Region = var0
end

function var3.SetRegionSignal(arg1, arg2)
   arg1:SetRegion(arg2)
   arg1.SelectionChanged:Fire()
end

function var3.Set(arg1)
end

function var3.Get(arg1)
   return { arg1._region }
end

return var3
