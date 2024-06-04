-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI.TextLabel
return function(arg1)
   local var105 = {}
   var105.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "VisualizationModes-Badge X-Fit X-Middle"
   local var110 = {}
   local var114 = {}
   var1.Tag = "X-Fit"
   var114.Text = arg1.Text
   var110.Label = var1.createElement(var2, var114)
   return var1.createElement("Frame", var105, var110)
end
