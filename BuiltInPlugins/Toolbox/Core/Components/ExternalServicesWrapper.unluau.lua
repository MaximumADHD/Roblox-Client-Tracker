-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.ReactUtils)
local var4 = require(var1.ReactSceneUnderstanding)
local var5 = require(var1.Framework).ContextServices
local var6 = require(var0.Core.Util.Constants)
local var7 = require(var0.Core.ContextServices.ModalContext)
local var8 = require(var0.Core.ContextServices.NetworkContext)
local var9 = var2.Component:extend("ExternalServicesWrapper")
local var10 = game:DefineFastInt("ToolboxSceneAnalysisPollingSeconds", 15)
local var11 = game:DefineFastInt("ToolboxSceneAnalysisViewportMaxScreenDivisions", 16)
local var12 = game:DefineFastInt("ToolboxSceneAnalysisViewportMaxDistance", 5000)
local var13 = game:DefineFastInt("ToolboxSceneAnalysisRangeMaxDistance", 100)
local var14 = game:DefineFastInt("ToolboxSceneAnalysisAssetLimit", 30)
function var9.render(arg1)
   local var0 = arg1.props
   local var70 = {}
   local var76 = {}
   var76.pollingSeconds = var10
   local var78 = {}
   var78.limit = var14
   var78.maxDistance = var13
   var76.rangeQueryOptions = var78
   local var81 = {}
   var81.limit = var14
   var81.maxDistance = var12
   var81.maxScreenDivisions = var11
   var76.viewportQueryOptions = var81
   local var85 = var2.createElement(var4.SceneAnalysisProvider, var76)
   var70.providers = {}
   local var89 = var7
   var89 = var0.pluginGui
   local var91 = var89.new(var89)
   local var92 = var8
   var92 = var0.networkInterface
   local var94 = var92.new(var92)
   return var2.createElement(var3.ContextStack, var70, var5.provide({}, var0[var2.Children]))
end

return var9
