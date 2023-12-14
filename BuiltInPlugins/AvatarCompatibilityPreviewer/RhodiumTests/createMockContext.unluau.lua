-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.AvatarToolsShared)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Util.DEPRECATED_PlacesServiceWrapper)
local var4 = require(var0.Src.Util.DEPRECATED_StudioAssetServiceWrapper)
local var5 = require(var0.Src.Resources.MakeTheme)
local var6 = require(var0.Src.Util.SelectionWrapper)
local var7 = require(var0.Src.Components.PlacesServiceContext)
local var8 = require(var0.Src.Util.UGCValidationContext)
local var9 = require(var0.Src.Resources.createAnalyticsHandlers)
local var10 = require(var0.Src.Flags.getFFlagAvatarPreviewerMultiSubmit)
local var11 = require(var0.Src.Flags.getFFlagAvatarPreviewerTestingScreen)
local var12 = require(var0.Src.Flags.getFFlagAvatarPreviewerUGCValidationNotice)
local var13 = var2.TestHelpers.Instances.MockAnalyticsService
local var14 = var2.TestHelpers.Instances.MockSelectionService
local var15 = var2.TestHelpers.Instances.MockPlugin
local var16 = require(var0.Packages.Dev.JestGlobals).jest
return function()
   local var0 = var15.new()
   local var1 = var13.new()
   local var2 = var14.new()
   local var3 = var16
   local var4 = var16
   local var5 = {}
   local var95 = var2.ContextServices.Plugin
   var95 = var0
   local var97 = var95.new(var95)
   local var100 = var5(true)
   local var102 = var2.ContextServices
   var102 = var1
   local var106 = var102.Analytics.new(var9, var102)
   local var11 = var1.Contexts.PreviewContext.new()
   local var112 = var6
   var112 = var2
   local var12 = var112.new(var112)
   if not var11() then
      var100 = var5
      local var0 = var3.mock()
      table.insert()
   end
   if not var10() then
      var100 = var5
      local var0 = var4.mock()
      table.insert()
   end
   if var12() then
      var100 = var5
      local var0 = var8.mockNeverReturns()
      table.insert()
   end
   local var13 = {}
   var13.context = var5
   var13.plugin = var0
   var13.analyticsService = var1
   var13.selectionService = var2
   local var134 = {}
   var134.startPlaySolo = var3.fn()
   var134.stopPlaySolo = var4.fn()
   var13.placesService = var134
   local var15 = {}
   local var16 = {}
   var16.startPlaySolo = var3
   var16.stopPlaySolo = var4
   var15.placesService = var16
   return var13var15,
end
