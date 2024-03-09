-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.AvatarToolsShared)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Resources.MakeTheme)
local var4 = require(var0.Src.Util.SelectionWrapper)
local var5 = require(var0.Src.Components.PlacesServiceContext)
local var6 = var1.Contexts.LuaMeshEditingModuleContext
local var7 = require(var0.Packages.LuaMeshEditingModule.Tools.BrushTool)
local var8 = require(var0.Src.Util.Constants)
local var9 = require(var0.Src.Resources.createAnalyticsHandlers)
local var10 = require(var0.Src.Util.makePluginActions)
local var11 = require(var0.Src.Flags.getFFlagAvatarPreviewerCageEditingTools)
local var12 = var2.ContextServices
local var13 = var12.Localization
local var14 = var2.TestHelpers.Instances.MockAnalyticsService
local var15 = var2.TestHelpers.Instances.MockSelectionService
local var16 = var2.TestHelpers.Instances.MockPlugin
local var17 = require(var0.Packages.Dev.JestGlobals).jest
return function()
   local var0 = var16.new()
   local var1 = var14.new()
   local var2 = var15.new()
   local var3 = var17
   local var4 = var17
   local var5 = {}
   local var90 = var2.ContextServices.Plugin
   var90 = var0
   local var92 = var90.new(var90)
   local var95 = var3(true)
   local var97 = var2.ContextServices
   var97 = var1
   local var101 = var97.Analytics.new(var9, var97)
   local var11 = var1.Contexts.PreviewContext.new()
   local var107 = var4
   var107 = var2
   local var12 = var107.new(var107)
   if var11() then
      local var0 = var7.new()
      var0:setFalloff(var8.CAGE_EDITING_DEFAULT_FALLOFF)
      local var120 = {}
      var120.BrushTool = var0
      local var123 = var12.PluginActions
      var123 = var0
      table.insert(var5, var6.new(var120))
      table.insert(var5, var123.new(var123, var10(var0, var13.mock())))
   end
   local var13 = {}
   var13.context = var5
   var13.plugin = var0
   var13.analyticsService = var1
   var13.selectionService = var2
   local var139 = {}
   var139.startPlaySolo = var3.fn()
   var139.stopPlaySolo = var4.fn()
   var13.placesService = var139
   local var15 = {}
   local var16 = {}
   var16.startPlaySolo = var3
   var16.stopPlaySolo = var4
   var15.placesService = var16
   return var13var15,
end
