-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("VisualizationModes").Packages.React)
return function(arg1)
   local var12 = {}
   var0.Tag = "VisualizationModes-Bottom-Divider"
   var12.LayoutOrder = arg1.LayoutOrder
   var12.Visible = arg1.Visible
   local var18 = {}
   var18.DividerRender = var0.createElement("Frame")
   return var0.createElement("Frame", var12, var18)
end
