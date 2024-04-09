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
   local var404 = var2
   local var3 = var4(function(arg1, arg2)
      local var0 = var2.MinSlope
      local var1 = var2.MaxSlope
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
      local var402 = {}
      var402.Min = var0
      var402.Max = var1
      arg1.OnChanged(var402)
   end, {})
   local var409 = {}
   var409.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var409.Layout = Enum.FillDirection.Horizontal
   var409.Size = UDim2.new(1, 0, 0, var0.Height)
   var409.Spacing = var0.Spacing
   local var419 = {}
   local var423 = {}
   var423.LayoutOrder = var1:getNextOrder()
   function var423.OnFocusLost(arg1)
      var3(arg1, nil)
   end
   
   var423.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   var423.Text = tostring(var2.Min)
   var419.MinSlope = var2.createElement(var6, var423)
   local var443 = {}
   var443.AutomaticSize = Enum.AutomaticSize.X
   var443.LayoutOrder = var1:getNextOrder()
   var443.Size = UDim2.fromScale(0, 1)
   var443.Text = "-"
   var419.Hyphen = var2.createElement(var7, var443)
   local var456 = {}
   var456.LayoutOrder = var1:getNextOrder()
   var456.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   function var456.OnFocusLost(arg1)
      var3(nil, arg1)
   end
   
   var456.Text = tostring(var2.Max)
   var419.MaxSlope = var2.createElement(var6, var456)
   local var476 = {}
   var476.AutomaticSize = Enum.AutomaticSize.X
   var476.LayoutOrder = var1:getNextOrder()
   var476.Size = UDim2.fromScale(0, 1)
   var476.Text = "??"
   var419.Degree = var2.createElement(var7, var476)
   return var2.createElement(var5, var409, var419)
end
