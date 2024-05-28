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
   local var452 = var2
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
      local var450 = {}
      var450.Min = var0
      var450.Max = var1
      arg1.OnChanged(var450)
   end, {})
   local var457 = {}
   var457.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var457.Layout = Enum.FillDirection.Horizontal
   var457.Size = UDim2.new(1, 0, 0, var0.Height)
   var457.Spacing = var0.Spacing
   local var467 = {}
   local var471 = {}
   var471.LayoutOrder = var1:getNextOrder()
   function var471.OnFocusLost(arg1)
      var3(arg1, nil)
   end
   
   var471.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   var471.Text = tostring(var2.Min)
   var467.MinSlope = var2.createElement(var6, var471)
   local var491 = {}
   var491.AutomaticSize = Enum.AutomaticSize.X
   var491.LayoutOrder = var1:getNextOrder()
   var491.Size = UDim2.fromScale(0, 1)
   var491.Text = "-"
   var467.Hyphen = var2.createElement(var7, var491)
   local var504 = {}
   var504.LayoutOrder = var1:getNextOrder()
   var504.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   function var504.OnFocusLost(arg1)
      var3(nil, arg1)
   end
   
   var504.Text = tostring(var2.Max)
   var467.MaxSlope = var2.createElement(var6, var504)
   local var524 = {}
   var524.AutomaticSize = Enum.AutomaticSize.X
   var524.LayoutOrder = var1:getNextOrder()
   var524.Size = UDim2.fromScale(0, 1)
   var524.Text = "??"
   var467.Degree = var2.createElement(var7, var524)
   return var2.createElement(var5, var457, var467)
end
