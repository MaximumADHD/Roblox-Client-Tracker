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
   local var448 = var2
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
      local var446 = {}
      var446.Min = var0
      var446.Max = var1
      arg1.OnChanged(var446)
   end, {})
   local var453 = {}
   var453.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var453.Layout = Enum.FillDirection.Horizontal
   var453.Size = UDim2.new(1, 0, 0, var0.Height)
   var453.Spacing = var0.Spacing
   local var463 = {}
   local var467 = {}
   var467.LayoutOrder = var1:getNextOrder()
   function var467.OnFocusLost(arg1)
      var3(arg1, nil)
   end
   
   var467.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   var467.Text = tostring(var2.Min)
   var463.MinSlope = var2.createElement(var6, var467)
   local var487 = {}
   var487.AutomaticSize = Enum.AutomaticSize.X
   var487.LayoutOrder = var1:getNextOrder()
   var487.Size = UDim2.fromScale(0, 1)
   var487.Text = "-"
   var463.Hyphen = var2.createElement(var7, var487)
   local var500 = {}
   var500.LayoutOrder = var1:getNextOrder()
   var500.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   function var500.OnFocusLost(arg1)
      var3(nil, arg1)
   end
   
   var500.Text = tostring(var2.Max)
   var463.MaxSlope = var2.createElement(var6, var500)
   local var520 = {}
   var520.AutomaticSize = Enum.AutomaticSize.X
   var520.LayoutOrder = var1:getNextOrder()
   var520.Size = UDim2.fromScale(0, 1)
   var520.Text = "??"
   var463.Degree = var2.createElement(var7, var520)
   return var2.createElement(var5, var453, var463)
end
