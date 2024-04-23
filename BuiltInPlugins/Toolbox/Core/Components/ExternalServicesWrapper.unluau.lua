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
local var9 = require(var0.Core.Flags.getFFlagToolboxPortContextualReccomendationsToNewPackage)
local var10 = var2.Component:extend("ExternalServicesWrapper")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.pluginGui
   local var2 = var0.networkInterface
   if var9() then
      local var52 = {}
      local var58 = {}
      var58.pollingSeconds = var6.CONTEXTUAL_RECOMMENDATIONS_POLLING_FREQUENCY_DEFAULT
      local var61 = var2.createElement(var4.SceneAnalysisProvider, var58)
      var52.providers = {}
      local var65 = var7
      var65 = var1
      local var67 = var65.new(var65)
      local var68 = var8
      var68 = var2
      local var70 = var68.new(var68)
      return var2.createElement(var3.ContextStack, var52, var5.provide({}, var0[var2.Children]))
   end
   local var79 = var7
   var79 = var1
   local var81 = var79.new(var79)
   local var82 = var8
   var82 = var2
   local var84 = var82.new(var82)
   return var5.provide({}, var0[var2.Children])
end

return var10
