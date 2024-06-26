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
   local var288 = {}
   var288.Width = 325
   var288.HeaderHeight = 32
   var288.MaxHeight = 400
   var288.InnerPadding = 5
   var288.Padding = Vector2.zero
   local var4 = var6(var288)
   local var298 = {}
   var2.Tag = "X-Fill X-Column X-Top"
   var298.Size = UDim2.fromOffset(var4.size.X, var4.size.Y)
   local var308 = {}
   local var312 = {}
   var312.StyleSheet = var1.Styling.registerPluginStyles(arg1.plugin, var0)
   var308.StyleLink = var2.createElement("StyleLink", var312)
   local var317 = {}
   var317.OnVisualizationModeToggle = var0.onVisualizationModeToggle
   var317.OnVisualizationModeCategoryToggle = var0.onVisualizationModeCategoryToggle
   var317.SizeCalculator = var4
   var317.RecentVisualizationModes = var0.state.recentModes
   var317.VisualizationModeCategories = var0.state.categories
   var308.VisualizationModesMainView = var2.createElement(var5, var317)
   return var2.createElement(var8, var298, var308)
end

var9.stories = {}
return var9
