-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI.TextLabel
return function(arg1)
   local var18 = {}
   var18.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "VisualizationModes-Badge X-Fit X-Middle"
   local var23 = {}
   local var27 = {}
   var1.Tag = "X-Fit"
   var27.Text = arg1.Text
   var23.Label = var1.createElement(var2, var27)
   return var1.createElement("Frame", var18, var23)
end
