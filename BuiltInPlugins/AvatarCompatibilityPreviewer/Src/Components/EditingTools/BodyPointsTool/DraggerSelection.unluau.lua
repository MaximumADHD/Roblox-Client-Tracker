-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AvatarCompatibilityPreviewer").Packages.DraggerFramework.Utility.Signal)
local var1 = {}
var1.__index = var1
function var1.new()
   local var11 = {}
   var11.SelectionChanged = var0.new()
   var11._selection = {}
   return setmetatable(var11, var1)
end

function var1.Get(arg1)
   return arg1._selection
end

function var1.Set(arg1, arg2)
   arg1._selection = arg2
   arg1.SelectionChanged:Fire()
end

return var1
