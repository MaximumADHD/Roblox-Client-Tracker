-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("VisualizationModes").Packages.React)
return function(arg1)
   local var3 = {}
   var0.Tag = "VisualizationModes-Bottom-Divider"
   var3.LayoutOrder = arg1.LayoutOrder
   var3.Visible = arg1.Visible
   local var9 = {}
   var9.DividerRender = var0.createElement("Frame")
   return var0.createElement("Frame", var3, var9)
end
