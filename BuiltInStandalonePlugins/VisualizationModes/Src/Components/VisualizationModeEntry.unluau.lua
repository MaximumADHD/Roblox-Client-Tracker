-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Pane
local var4 = var2.Checkbox
return function(arg1)
   local var69 = {}
   var69.Size = UDim2.new(1, 0, 0, 16)
   var69.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var69.LayoutOrder = arg1.LayoutOrder
   local var78 = {}
   local var82 = {}
   var82.Text = arg1.Text
   var82.Checked = arg1.Enabled
   function var82.OnClick()
      if arg1.OnToggle then
         arg1.OnToggle()
      end
   end
   
   var78.Checkbox = var1.createElement(var4, var82)
   return var1.createElement(var3, var69, var78)
end
