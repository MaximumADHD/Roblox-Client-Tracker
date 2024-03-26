-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Rodux)
local var4 = require(var1.Framework)
local var5 = var4.Http.Networking
local var6 = var4.ContextServices
local var7 = var4.Style.ThemeSwitcher
local var8 = var4.Util.Signal
local var9 = require(var0.Core.Util.Settings)
local var10 = require(var0.Core.Util.ToolboxTheme)
local var11 = require(var0.Core.Reducers.ToolboxReducer)
local var12 = require(var0.Core.Networking.NetworkInterfaceMock)
local var13 = require(var0.Core.Util.Analytics.AssetAnalyticsContextItem)
local var14 = require(var0.Core.Util.Analytics.AssetAnalytics)
local var15 = require(var0.Core.Components.ExternalServicesWrapper)
local var16 = require(var0.Core.ContextServices.Settings)
local var17 = require(var0.Core.Util.makeTheme)
local var18 = require(var0.Core.Themes.getAssetConfigTheme)
local var19 = require(var0.TestUtils.CoreTestUtils)
return function(arg1)
   local var0 = arg1.store or var3.Store.new(var11, nil, var19.createThunkMiddleware())
   local var1 = arg1.storeSetup
   if var1 then
      arg1.storeSetup(var0)
   end
   local var92 = arg1.pluginGui
   local var3 = arg1.settings or var9.new(plugin)
   local var104 = var16
   var104 = var3
   local var108 = var6.Store
   var108 = var0
   local var114 = {}
   var114.networking = var5.mock()
   local var146 = {}
   var146.stringResourceTable = var0.LocalizationSource.SourceStrings
   var146.translationResourceTable = var0.LocalizationSource.LocalizedStrings
   var146.pluginName = "Toolbox"
   local var152 = {}
   var152.stringResourceTable = var4.Resources.SourceStrings
   local var156 = var4
   local var157 = var156.Resources
   local var158 = var157.LocalizedStrings
   var152.translationResourceTable = var158
   var4.Resources.LOCALIZATION_PROJECT_NAME = var152
   var146.libraries = {}
   function var146.overrideGetLocale()
      return "en-us"
   end
   
   var146.overrideLocaleId = "en-us"
   local var161 = var8
   local var163 = var161.new()
   var146.overrideLocaleChangedSignal = var163
   var163 = var108.new(var108)
   var161 = var104.new(var104)
   var152 = var6.API.new(var114)
   var158 = var13.new(arg1.assetAnalytics or var14.mock())
   var157 = var17(var18(), var7)
   var156 = var6.Localization.new(var146)
   local var169 = {}
   var169.store = var0
   var169.plugin = plugin
   var169.pluginGui = var1
   var169.settings = var3
   var169.theme = arg1.legacyTheme or var10.createDummyThemeManager()
   var169.networkInterface = arg1.networkInterface or var12.new()
   local var172 = var6
   var172 = {}
   local var10 = var172.provide(var172, arg1[var2.Children])
   return var2.createElement(var15, var169, {})
end
