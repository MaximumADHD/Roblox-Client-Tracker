-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Model.VisualizationModeCombinerClient)
local var4 = require(var0.Src.Model.Tracking.VisualizationModeServiceTracker)
local var5 = require(var0.Src.Components.VisualizationModesMainView)
local var6 = require(var0.Src.Hooks.useSizeCalculator)
local var7 = require(var0.Src.Hooks.useVisualizationModeCombiner)
local var8 = var1.UI.Pane
local var9 = {}
var9.name = "VisualizationModesMainView"
var9.summary = "Renders the main visualization modes view with all sections and controls"
local var10 = {}
var10.name = "VisualizationModesMainView"
function var10.story(arg1)
   local var0 = var7()
   local var1 = var2.useState(function()
      return var4.new()
   end)
   local var2 = var2.useState(function()
      return var3.new(arg1.plugin, var1)
   end)
   var2.useEffect(function()
      var1:destroy()
      var2:destroy()
   end, {})
   local var344 = {}
   var344.Width = 325
   var344.HeaderHeight = 32
   var344.MaxHeight = 400
   var344.InnerPadding = 5
   var344.Padding = Vector2.zero
   local var4 = var6(var344)
   local var354 = {}
   var2.Tag = "X-Fill X-Column X-Top"
   var354.Size = UDim2.fromOffset(var4.size.X, var4.size.Y)
   local var364 = {}
   local var368 = {}
   var368.StyleSheet = var1.Styling.registerPluginStyles(arg1.plugin, var0)
   var364.StyleLink = var2.createElement("StyleLink", var368)
   local var373 = {}
   var373.OnVisualizationModeToggle = var0.onVisualizationModeToggle
   var373.OnVisualizationModeCategoryToggle = var0.onVisualizationModeCategoryToggle
   var373.SizeCalculator = var4
   var373.RecentVisualizationModes = var0.state.recentModes
   var373.VisualizationModeCategories = var0.state.categories
   var364.VisualizationModesMainView = var2.createElement(var5, var373)
   return var2.createElement(var8, var354, var364)
end

var9.stories = {}
return var9
