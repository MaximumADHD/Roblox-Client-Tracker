-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
var2.editPlaceId = 0
var2.editDevProductId = nil
local var17 = {}
function var17.ResetStore(arg1, arg2)
   return var2
end

function var17.SetEditPlaceId(arg1, arg2)
   local var24 = var1.Dictionary
   var24 = arg1
   local var26 = {}
   var26.editPlaceId = arg2.editPlaceId
   return var24.join(var24, var26)
end

function var17.SetEditDevProductId(arg1, arg2)
   local var32 = var1.Dictionary
   var32 = arg1
   local var34 = {}
   if arg2.editDevProductId == "Dictionary" then
      local var0 = arg2.editDevProductId or var1.None
   end
   var34.editDevProductId = var1.None
   return var32.join(var32, var34)
end

return require(var0.Packages.Rodux).createReducer(var2, var17)
