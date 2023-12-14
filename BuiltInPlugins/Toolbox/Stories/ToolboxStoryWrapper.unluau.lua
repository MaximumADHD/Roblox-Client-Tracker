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
local var9 = require(var0.Core.Util.Localization)
local var10 = require(var0.Core.Util.Settings)
local var11 = require(var0.Core.Util.ToolboxTheme)
local var12 = require(var0.Core.Reducers.ToolboxReducer)
local var13 = require(var0.Core.Networking.NetworkInterfaceMock)
local var14 = require(var0.Core.Util.Analytics.AssetAnalyticsContextItem)
local var15 = require(var0.Core.Util.Analytics.AssetAnalytics)
local var16 = require(var0.Core.Components.ExternalServicesWrapper)
local var17 = require(var0.Core.ContextServices.Settings)
local var18 = require(var0.Core.Util.makeTheme)
local var19 = require(var0.Core.Themes.getAssetConfigTheme)
local var20 = require(var0.TestUtils.CoreTestUtils)
return function(arg1)
   local var0 = arg1.store or var3.Store.new(var12, nil, var20.createThunkMiddleware())
   local var1 = arg1.storeSetup
   if var1 then
      arg1.storeSetup(var0)
   end
   local var97 = arg1.pluginGui
   local var3 = arg1.settings or var10.new(plugin)
   local var114 = var17
   var114 = var3
   local var118 = var6.Store
   var118 = var0
   local var124 = {}
   var124.networking = var5.mock()
   local var156 = {}
   var156.stringResourceTable = var0.LocalizationSource.SourceStrings
   var156.translationResourceTable = var0.LocalizationSource.LocalizedStrings
   var156.pluginName = "Toolbox"
   local var162 = {}
   var162.stringResourceTable = var4.Resources.SourceStrings
   local var166 = var4
   local var167 = var166.Resources
   local var168 = var167.LocalizedStrings
   var162.translationResourceTable = var168
   var4.Resources.LOCALIZATION_PROJECT_NAME = var162
   var156.libraries = {}
   function var156.overrideGetLocale()
      return "en-us"
   end
   
   var156.overrideLocaleId = "en-us"
   local var171 = var8
   local var173 = var171.new()
   var156.overrideLocaleChangedSignal = var173
   var173 = var118.new(var118)
   var171 = var114.new(var114)
   var162 = var6.API.new(var124)
   var168 = var14.new(arg1.assetAnalytics or var15.mock())
   var167 = var18(var19(), var7)
   var166 = var6.Localization.new(var156)
   local var179 = {}
   var179.store = var0
   var179.plugin = plugin
   var179.pluginGui = var1
   var179.settings = var3
   var179.theme = arg1.legacyTheme or var11.createDummyThemeManager()
   var179.networkInterface = arg1.networkInterface or var13.new()
   var179.localization = arg1.legacyLocalization or var9.createDummyLocalization()
   local var182 = var6
   var182 = {}
   local var10 = var182.provide(var182, arg1[var2.Children])
   return var2.createElement(var16, var179, {})
end
