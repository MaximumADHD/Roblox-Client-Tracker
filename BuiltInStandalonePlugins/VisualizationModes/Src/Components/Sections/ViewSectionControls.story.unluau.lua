-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Components.Sections.ViewSectionControls)
local var3 = require(var0.Packages.Framework)
local var4 = var3.UI.Pane
local var5 = var3.Styling.registerPluginStyles
local var6 = {}
var6.name = "ViewSectionControls"
var6.summary = "Renders the custom controls for the \'View\' section of the visualization modes plugin"
local var7 = {}
var7.name = "ViewSectionControls"
function var7.story(arg1)
   local var30 = {}
   var1.Tag = "X-Fill X-Column X-Top"
   var30.Size = UDim2.fromOffset(325, 300)
   local var38 = {}
   local var42 = {}
   var42.StyleSheet = var5(arg1.plugin, var0)
   var38.StyleLink = var1.createElement("StyleLink", var42)
   var38.ViewSectionControls = var1.createElement(var2)
   return var1.createElement(var4, var30, var38)
end

var6.stories = {}
return var6
