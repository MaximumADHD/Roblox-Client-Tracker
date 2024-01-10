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
local var9 = var2.Component:extend("ExternalServicesWrapper")
function var9.render(arg1)
   local var0 = arg1.props
   local var50 = var4
   var50 = var0.pluginGui
   local var52 = var50.new(var50)
   local var53 = var5
   var53 = var0.networkInterface
   local var55 = var53.new(var53)
   local var56 = {}
   local var60 = {}
   var60.theme = var0.theme
   local var61 = {}
   local var65 = {}
   var65.localization = var0.localization
   local var66 = {}
   var66.CameraProvider = var2.createElement(var8, {}, var0[var2.Children])
   var61.LocalizationProvider = var2.createElement(var7, var65, var66)
   var56.ThemeProvider = var2.createElement(var6, var60, var61)
   return var3.provide({}, var56)
end

return var9
