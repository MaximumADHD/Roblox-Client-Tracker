-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = {}
local var18 = require(var0.Src.Resources.Constants).SCREENS
var2.screen = var18.CREATE_NEW_GAME
var18 = var2
local var21 = {}
function var21.SetScreen(arg1, arg2)
   local var25 = var1.Dictionary
   var25 = arg1
   local var27 = {}
   var27.screen = arg2.screen
   return var25.join(var25, var27)
end

function var21.ResetInfo(arg1, arg2)
   local var33 = var1.Dictionary
   var33 = arg1
   local var35 = {}
   var35.screen = arg2.screen
   return var33.join(var33, var35)
end

return require(var0.Packages.Rodux).createReducer(var18, var21)
