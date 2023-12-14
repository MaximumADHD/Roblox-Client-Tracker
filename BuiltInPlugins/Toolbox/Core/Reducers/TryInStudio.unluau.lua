-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var17 = {}
var17.triedInStudio = {}
function require(var0.Core.Actions.MarkTryInStudioDone).name(arg1, arg2)
   local var0 = {}
   arg2.assetId = true
   var0.triedInStudio = var2.Dictionary.join(arg1.triedInStudio, {})
   return var0
end

return require(var1.Rodux).createReducer(var17, {})
