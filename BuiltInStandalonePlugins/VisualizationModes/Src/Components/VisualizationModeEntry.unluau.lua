-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Pane
local var4 = var2.Checkbox
return function(arg1)
   local var19 = {}
   var19.Size = UDim2.new(1, 0, 0, 16)
   var19.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var19.LayoutOrder = arg1.LayoutOrder
   local var28 = {}
   local var32 = {}
   var32.Text = arg1.Text
   var32.Checked = arg1.Enabled
   function var32.OnClick()
      if arg1.OnToggle then
         arg1.OnToggle()
      end
   end
   
   var28.Checkbox = var1.createElement(var4, var32)
   return var1.createElement(var3, var19, var28)
end
