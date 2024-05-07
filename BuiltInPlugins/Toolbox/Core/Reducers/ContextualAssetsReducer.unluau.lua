-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Cryo)
local var27 = var0.Core
local var3 = require(var27.Flags.getFFlagToolboxPortContextualReccomendationsToNewPackage)
local var4 = {}
var4.assetsInCameraViewport = {}
var4.assetsInCameraVicinity = {}
var4.contextualRecommendationsPollingFrequencyInSeconds = require(var0.Core.Util.Constants).CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT
var27 = var4
function require(var0.Core.Actions.SetAssetsInCameraRange).name(arg1, arg2)
   local var41 = var3()
   var41 = `{script.Name}marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage`
   assert(var41, var41)
   local var50 = var2.Dictionary
   var50 = arg1
   local var52 = {}
   var52.assetsInCameraViewport = arg2.assetsInCameraViewport
   var52.assetsInCameraVicinity = arg2.assetsInCameraVicinity
   return var50.join(var50, var52)
end

function require(var0.Core.Actions.SetContextualRecommendationsPollingFrequency).name(arg1, arg2)
   local var60 = var3()
   var60 = `{script.Name}marked for removal by FFlagToolboxPortContextualReccomendationsToNewPackage`
   assert(var60, var60)
   local var69 = var2.Dictionary
   var69 = arg1
   local var71 = {}
   var71.contextualRecommendationsPollingFrequencyInSeconds = arg2.contextualRecommendationsPollingFrequencyInSeconds
   return var69.join(var69, var71)
end

return require(var1.Rodux).createReducer(var27, {})
