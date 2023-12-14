-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.Util.StyleModifier
local var4 = var2.Dash.join
local var5 = var2.ContextServices
local var6 = var2.UI.TreeTableCell
local var7 = require(var0.Src.Components.Breakpoints.BreakpointsEnabledCell)
local var8 = require(var0.Src.Components.Breakpoints.BreakpointsContinueExecutionCell)
local var9 = require(var0.Src.Components.Breakpoints.BreakpointsRemoveOnHitCell)
local var10 = var1.PureComponent:extend("BreakpointsTreeTableCell")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Columns[var0.ColumnIndex].Key
   local var2 = var0.Width or UDim.new(1 / var0.Columns, 0)
   local var3 = var0.Row
   local var4 = var0.CellProps
   local var5 = var3.item[var1]
   if var1 == "isEnabled" then
      local var0 = false
   end
   if var1 == "continueExecution" then
      local var0 = false
   end
   if var1 == "removeOnHit" then
      local var0 = false
   end
   local var6 = var4(var0.Style, var4.CellStyle)
   if var0.RowIndex % 2 == 1 then
      local var0 = var6.BackgroundOdd or var6.BackgroundEven
   end
   local var7 = var6.BackgroundEven
   if var0.HighlightCell then
      if var6[var3.Hover] then
         if var0.RowIndex % 2 == 1 then
            local var0 = var6[var3.Hover].BackgroundOdd or var6[var3.Hover].BackgroundEven
         end
         var7 = var6[var3.Hover].BackgroundEven
      end
   end
   local var8 = var3.item.children
   if var8 then
      if var3.item.children > 0 then
         local var0 = false
      end
      local var0 = true
   end
   if true then
      local var272 = {}
      var272.ColumnIndex = var0.ColumnIndex
      var272.Row = var3
      var272.Style = var6
      var272.HasChildren = var8
      var272.BackgroundColor = var7
      var272.Width = var2
      var272.CellProps = var4
      return var1.createElement(var7, var272)
   end
   if true then
      local var278 = {}
      var278.Row = var3
      var278.Style = var6
      var278.HasChildren = var8
      var278.BackgroundColor = var7
      var278.Width = var2
      var278.Value = var5
      return var1.createElement(var8, var278)
   end
   if true then
      local var283 = {}
      var283.Row = var3
      var283.Style = var6
      var283.HasChildren = var8
      var283.BackgroundColor = var7
      var283.Width = var2
      var283.Value = var5
      return var1.createElement(var9, var283)
   end
   local var288 = {}
   var288.CellProps = var0.CellProps
   var288.Columns = var0.Columns
   var288.ColumnIndex = var0.ColumnIndex
   var288.Row = var0.Row
   var288.Width = var0.Width
   var288.Style = var0.Style
   var288.RowIndex = var0.RowIndex
   var288.HighlightCell = var0.HighlightCell
   var288.OnRightClick = var0.OnRightClick
   var288.SetCellContentsWidth = var0.SetCellContentsWidth
   var288.Emphasis = var0.Emphasis
   return var1.createElement(var6, var288)
end

local var302 = {}
var302.Analytics = var5.Analytics
var10 = var5.withContext(var302)(var10)
return var10
