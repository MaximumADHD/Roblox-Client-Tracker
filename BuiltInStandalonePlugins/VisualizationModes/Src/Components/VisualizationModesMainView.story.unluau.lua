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
   local var352 = {}
   var352.Width = 325
   var352.HeaderHeight = 32
   var352.MaxHeight = 400
   var352.InnerPadding = 5
   var352.Padding = Vector2.zero
   local var4 = var6(var352)
   local var362 = {}
   var2.Tag = "X-Fill X-Column X-Top"
   var362.Size = UDim2.fromOffset(var4.size.X, var4.size.Y)
   local var372 = {}
   local var376 = {}
   var376.StyleSheet = var1.Styling.registerPluginStyles(arg1.plugin, var0)
   var372.StyleLink = var2.createElement("StyleLink", var376)
   local var381 = {}
   var381.OnVisualizationModeToggle = var0.onVisualizationModeToggle
   var381.OnVisualizationModeCategoryToggle = var0.onVisualizationModeCategoryToggle
   var381.SizeCalculator = var4
   var381.RecentVisualizationModes = var0.state.recentModes
   var381.VisualizationModeCategories = var0.state.categories
   var372.VisualizationModesMainView = var2.createElement(var5, var381)
   return var2.createElement(var8, var362, var372)
end

var9.stories = {}
return var9
