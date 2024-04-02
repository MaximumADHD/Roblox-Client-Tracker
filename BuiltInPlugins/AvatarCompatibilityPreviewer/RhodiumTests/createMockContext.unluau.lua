-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.AvatarToolsShared)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Resources.MakeTheme)
local var4 = require(var0.Src.Util.SelectionWrapper)
local var5 = require(var0.Src.Components.PlacesServiceContext)
local var6 = require(var0.Src.Resources.createAnalyticsHandlers)
local var7 = require(var0.Src.Util.makePluginActions)
local var8 = require(var0.Src.Flags.getFFlagAvatarPreviewerCageEditingTools)
local var9 = var2.ContextServices
local var10 = var9.Localization
local var11 = var2.TestHelpers.Instances.MockAnalyticsService
local var12 = var2.TestHelpers.Instances.MockSelectionService
local var13 = var2.TestHelpers.Instances.MockPlugin
local var14 = require(var0.Packages.Dev.JestGlobals).jest
return function()
   local var0 = var13.new()
   local var1 = var11.new()
   local var2 = var12.new()
   local var3 = var14
   local var4 = var14
   local var5 = {}
   local var77 = var2.ContextServices.Plugin
   var77 = var0
   local var79 = var77.new(var77)
   local var82 = var3(true)
   local var84 = var2.ContextServices
   var84 = var1
   local var88 = var84.Analytics.new(var6, var84)
   local var11 = var1.Contexts.PreviewContext.new()
   local var94 = var4
   var94 = var2
   local var12 = var94.new(var94)
   if var8() then
      local var100 = var9.PluginActions
      var100 = var0
      var11 = var0
      table.insert(var5, var100.new(var100, var7(var11, var10.mock())))
   end
   local var13 = {}
   var13.context = var5
   var13.plugin = var0
   var13.analyticsService = var1
   var13.selectionService = var2
   local var112 = {}
   var112.startPlaySolo = var3.fn()
   var112.stopPlaySolo = var4.fn()
   var13.placesService = var112
   local var15 = {}
   local var16 = {}
   var16.startPlaySolo = var3
   var16.stopPlaySolo = var4
   var15.placesService = var16
   return var13var15,
end
