-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.ContextServices.ModalContext)
local var5 = require(var0.Core.ContextServices.NetworkContext)
local var6 = require(var0.Core.Providers.ThemeProvider)
local var7 = require(var0.Core.Providers.LocalizationProvider)
local var8 = require(var0.Core.Providers.CameraProvider)
local var9 = require(var0.Core.Util.SharedFlags.getFFlagToolboxFinallyRemoveLegacyContext)
local var10 = var2.Component:extend("ExternalServicesWrapper")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.pluginGui
   local var2 = var0.networkInterface
   if var9() then
      local var58 = var4
      var58 = var1
      local var60 = var58.new(var58)
      local var61 = var5
      var61 = var2
      local var63 = var61.new(var61)
      return var3.provide({}, var0[var2.Children])
   end
   local var71 = var4
   var71 = var1
   local var73 = var71.new(var71)
   local var74 = var5
   var74 = var2
   local var76 = var74.new(var74)
   local var77 = {}
   local var81 = {}
   var81.theme = var0.theme
   local var82 = {}
   local var86 = {}
   var86.localization = var0.localization
   local var87 = {}
   var87.CameraProvider = var2.createElement(var8, {}, var0[var2.Children])
   var82.LocalizationProvider = var2.createElement(var7, var86, var87)
   var77.ThemeProvider = var2.createElement(var6, var81, var82)
   return var3.provide({}, var77)
end

return var10
