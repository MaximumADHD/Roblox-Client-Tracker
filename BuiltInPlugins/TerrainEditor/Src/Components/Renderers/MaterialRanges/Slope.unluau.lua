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
   local var451 = var2
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
      local var449 = {}
      var449.Min = var0
      var449.Max = var1
      arg1.OnChanged(var449)
   end, {})
   local var456 = {}
   var456.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var456.Layout = Enum.FillDirection.Horizontal
   var456.Size = UDim2.new(1, 0, 0, var0.Height)
   var456.Spacing = var0.Spacing
   local var466 = {}
   local var470 = {}
   var470.LayoutOrder = var1:getNextOrder()
   function var470.OnFocusLost(arg1)
      var3(arg1, nil)
   end
   
   var470.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   var470.Text = tostring(var2.Min)
   var466.MinSlope = var2.createElement(var6, var470)
   local var490 = {}
   var490.AutomaticSize = Enum.AutomaticSize.X
   var490.LayoutOrder = var1:getNextOrder()
   var490.Size = UDim2.fromScale(0, 1)
   var490.Text = "-"
   var466.Hyphen = var2.createElement(var7, var490)
   local var503 = {}
   var503.LayoutOrder = var1:getNextOrder()
   var503.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   function var503.OnFocusLost(arg1)
      var3(nil, arg1)
   end
   
   var503.Text = tostring(var2.Max)
   var466.MaxSlope = var2.createElement(var6, var503)
   local var523 = {}
   var523.AutomaticSize = Enum.AutomaticSize.X
   var523.LayoutOrder = var1:getNextOrder()
   var523.Size = UDim2.fromScale(0, 1)
   var523.Text = "??"
   var466.Degree = var2.createElement(var7, var523)
   return var2.createElement(var5, var456, var466)
end
