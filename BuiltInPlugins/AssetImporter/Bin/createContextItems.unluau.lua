-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
return function(arg1, arg2, arg3)
   local var0 = require(var0.Packages.Framework).ContextServices
   local var46 = var0
   local var51 = var0.Plugin
   var51 = arg1
   var46 = arg2
   local var63 = {}
   var63.stringResourceTable = var0.Src.Resources.Localization.SourceStrings
   var63.translationResourceTable = var46.Src.Resources.Localization.LocalizedStrings
   var63.pluginName = "AssetImporter"
   local var4 = var0.Localization.new(var63)
   local var5 = {}
   var5.Plugin = var51.new(var51)
   var5.Mouse = var0.Mouse.new(arg1:getMouse())
   var5.Store = var0.Store.new(var46)
   var5.Theme = require(var0.Src.Resources.MakeTheme)()
   var5.Localization = var4
   var5.Analytics = var0.Analytics.new(require(var0.Src.Resources.createAnalyticsHandlers))
   var5.CalloutController = require(var0.Src.Controllers.CalloutController).new()
   var5.PresetController = require(var0.Src.Controllers.PresetController).new(arg1, arg2, var4)
   if arg3 then
      var5.PluginLoaderContextItem = arg3
   end
   return var5
end
