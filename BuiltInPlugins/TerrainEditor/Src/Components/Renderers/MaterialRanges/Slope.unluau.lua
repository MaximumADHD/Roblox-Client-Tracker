-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = var1.ContextServices.Stylizer
local var4 = var2.useCallback
local var5 = var1.UI.Pane
local var6 = var1.UI.TextInput
local var7 = var1.UI.TextLabel
local var8 = var1.Util.LayoutOrderIterator
local var9 = require(var0.Src.Resources.Theme)
return function(arg1)
   local var0 = var3:use("SlopeRenderer")
   local var1 = var8.new()
   local var2 = arg1.Value
   local var457 = var2
   local var3 = var4(function(arg1, arg2)
      local var0 = var2.Min
      local var1 = var2.Max
      if arg1 then
         local var0 = tonumber(arg1)
         if var0 then
            var0 = math.clamp(var0, 0, var1)
         end
      end
      if arg2 then
         local var0 = tonumber(arg2)
         if var0 then
            var1 = math.clamp(var0, var0, 90)
         end
      end
      local var455 = {}
      var455.Min = var0
      var455.Max = var1
      arg1.OnChanged(var455)
   end, {})
   local var462 = {}
   var462.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var462.Layout = Enum.FillDirection.Horizontal
   var462.Size = UDim2.new(1, 0, 0, var0.Height)
   var462.Spacing = var0.Spacing
   local var472 = {}
   local var476 = {}
   var476.LayoutOrder = var1:getNextOrder()
   function var476.OnFocusLost(arg1)
      var3(arg1, nil)
   end
   
   var476.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   var476.Text = tostring(var2.Min)
   var472.MinSlope = var2.createElement(var6, var476)
   local var496 = {}
   var496.AutomaticSize = Enum.AutomaticSize.X
   var496.LayoutOrder = var1:getNextOrder()
   var496.Size = UDim2.fromScale(0, 1)
   var496.Text = "-"
   var472.Hyphen = var2.createElement(var7, var496)
   local var509 = {}
   var509.LayoutOrder = var1:getNextOrder()
   var509.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   function var509.OnFocusLost(arg1)
      var3(nil, arg1)
   end
   
   var509.Text = tostring(var2.Max)
   var472.MaxSlope = var2.createElement(var6, var509)
   local var529 = {}
   var529.AutomaticSize = Enum.AutomaticSize.X
   var529.LayoutOrder = var1:getNextOrder()
   var529.Size = UDim2.fromScale(0, 1)
   var529.Text = "??"
   var472.Degree = var2.createElement(var7, var529)
   return var2.createElement(var5, var462, var472)
end
