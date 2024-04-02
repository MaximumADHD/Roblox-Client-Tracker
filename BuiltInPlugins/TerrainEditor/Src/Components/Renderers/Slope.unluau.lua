-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = var1.ContextServices.Stylizer
local var4 = var2.useCallback
local var5 = var2.useMemo
local var6 = var1.UI.Pane
local var7 = var1.UI.TextInput
local var8 = var1.UI.TextLabel
local var9 = var1.Util.LayoutOrderIterator
local var10 = require(var0.Src.Resources.Theme)
return function(arg1)
   local var0 = var3:use("SlopeRenderer")
   local var1 = var9.new()
   local var2 = arg1.Value
   local var311 = var2.MaterialIndex
   local var3 = var5(function()
      return var2.MaterialList[var2.MaterialIndex]
   end, {})
   local var346 = var3
   local var347 = var2
   local var4 = var4(function(arg1, arg2)
      local var0 = var3.MinSlope
      local var1 = var3.MaxSlope
      if arg1 then
         local var0 = tonumber(arg1)
         if var0 then
            var0 = var0
         end
      end
      if arg2 then
         local var0 = tonumber(arg2)
         if var0 then
            var1 = var0
         end
      end
      local var2 = table.clone(var2)
      var2.MaterialList = table.clone(var2.MaterialList)
      local var332 = var2.MaterialList
      var2.MaterialIndex = table.clone(var2.MaterialList[var2.MaterialIndex])
      var2.MaterialList[var2.MaterialIndex].MinSlope = var0
      var2.MaterialList[var2.MaterialIndex].MaxSlope = var1
   end, {})
   local var352 = {}
   var352.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var352.Layout = Enum.FillDirection.Horizontal
   var352.Size = UDim2.new(1, 0, 0, var0.Height)
   var352.Spacing = var0.Spacing
   local var362 = {}
   local var366 = {}
   var366.LayoutOrder = var1:getNextOrder()
   function var366.OnFocusLost(arg1)
      var4(arg1, nil)
   end
   
   var366.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   var366.Text = tostring(var3.MinSlope)
   var362.MinSlope = var2.createElement(var7, var366)
   local var386 = {}
   var386.AutomaticSize = Enum.AutomaticSize.X
   var386.LayoutOrder = var1:getNextOrder()
   var386.Size = UDim2.fromScale(0, 1)
   var386.Text = "-"
   var362.Hyphen = var2.createElement(var8, var386)
   local var399 = {}
   var399.LayoutOrder = var1:getNextOrder()
   var399.Size = UDim2.new(0, var0.TextInputWidth, 1, 0)
   function var399.OnFocusLost(arg1)
      var4(nil, arg1)
   end
   
   var399.Text = tostring(var3.MaxSlope)
   var362.MaxSlope = var2.createElement(var7, var399)
   local var419 = {}
   var419.AutomaticSize = Enum.AutomaticSize.X
   var419.LayoutOrder = var1:getNextOrder()
   var419.Size = UDim2.fromScale(0, 1)
   var419.Text = "??"
   var362.Degree = var2.createElement(var8, var419)
   return var2.createElement(var6, var352, var362)
end
