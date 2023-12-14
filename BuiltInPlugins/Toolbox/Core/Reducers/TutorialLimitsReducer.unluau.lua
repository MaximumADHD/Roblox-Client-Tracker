-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var17 = {}
var17.assetIds = nil
var17.positionOverride = nil
var17.scriptWarningOverride = false
function require(var0.Core.Actions.SetTutorialLimits).name(arg1, arg2)
   local var0 = {}
   var0.assetIds = arg2.assetIds
   var0.positionOverride = arg2.positionOverride
   var0.scriptWarningOverride = arg2.scriptWarningOverride
   return var0
end

return require(var1.Rodux).createReducer(var17, {})
