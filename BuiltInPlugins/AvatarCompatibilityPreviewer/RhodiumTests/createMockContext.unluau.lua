-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.AvatarToolsShared)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Util.DEPRECATED_PlacesServiceWrapper)
local var4 = require(var0.Src.Resources.MakeTheme)
local var5 = require(var0.Src.Util.SelectionWrapper)
local var6 = require(var0.Src.Components.PlacesServiceContext)
local var7 = require(var0.Src.Util.UGCValidationContext)
local var8 = require(var0.Src.Resources.createAnalyticsHandlers)
local var9 = require(var0.Src.Flags.getFFlagAvatarPreviewerTestingScreen)
local var10 = require(var0.Src.Flags.getFFlagAvatarPreviewerUGCValidationNotice)
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
   local var85 = var2.ContextServices.Plugin
   var85 = var0
   local var87 = var85.new(var85)
   local var90 = var4(true)
   local var92 = var2.ContextServices
   var92 = var1
   local var96 = var92.Analytics.new(var8, var92)
   local var11 = var1.Contexts.PreviewContext.new()
   local var102 = var5
   var102 = var2
   local var12 = var102.new(var102)
   if not var9() then
      var90 = var5
      local var0 = var3.mock()
      table.insert()
   end
   if var10() then
      var90 = var5
      local var0 = var7.mockNeverReturns()
      table.insert()
   end
   local var13 = {}
   var13.context = var5
   var13.plugin = var0
   var13.analyticsService = var1
   var13.selectionService = var2
   local var118 = {}
   var118.startPlaySolo = var3.fn()
   var118.stopPlaySolo = var4.fn()
   var13.placesService = var118
   local var15 = {}
   local var16 = {}
   var16.startPlaySolo = var3
   var16.stopPlaySolo = var4
   var15.placesService = var16
   return var13var15,
end
