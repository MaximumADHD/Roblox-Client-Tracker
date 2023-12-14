-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var3 = {}
var3.assetsInCameraViewport = {}
var3.assetsInCameraVicinity = {}
var3.contextualRecommendationsPollingFrequencyInSeconds = require(var0.Core.Util.Constants).CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT
local var32 = var3
function require(var0.Core.Actions.SetAssetsInCameraRange).name(arg1, arg2)
   local var38 = var2.Dictionary
   var38 = arg1
   local var40 = {}
   var40.assetsInCameraViewport = arg2.assetsInCameraViewport
   var40.assetsInCameraVicinity = arg2.assetsInCameraVicinity
   return var38.join(var38, var40)
end

function require(var0.Core.Actions.SetContextualRecommendationsPollingFrequency).name(arg1, arg2)
   local var48 = var2.Dictionary
   var48 = arg1
   local var50 = {}
   var50.contextualRecommendationsPollingFrequencyInSeconds = arg2.contextualRecommendationsPollingFrequencyInSeconds
   return var48.join(var48, var50)
end

return require(var1.Rodux).createReducer({}, {})
