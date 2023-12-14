-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var13 = {}
var13.game = nil
var13.gameId = nil
local var16 = {}
function var16.ResetStore(arg1, arg2)
   return {}
end

function var16.SetGameId(arg1, arg2)
   local var23 = var1.Dictionary
   var23 = arg1
   local var25 = {}
   var25.gameId = arg2.gameId
   return var23.join(var23, var25)
end

function var16.SetGame(arg1, arg2)
   local var31 = var1.Dictionary
   var31 = arg1
   local var33 = {}
   var33.game = arg2.game
   return var31.join(var31, var33)
end

return require(var0.Packages.Rodux).createReducer(var13, var16)
